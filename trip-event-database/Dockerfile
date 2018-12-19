FROM rocker/r-ver:3.5.0

## dependencies for R packages
RUN apt-get update && \
	apt-get -y install wget libpq-dev libxml2-dev libcurl4-openssl-dev libssl-dev libz-dev

## install R packages
RUN R -e "install.packages(c('tidyverse', 'dbplyr', 'lubridate', 'DBI', 'RPostgres', 'jsonlite'))"

## install docker so that this container can start siblings if the docker socket gets mounted (we just need the client binary)
RUN cd ~ && \
	wget -qO- https://download.docker.com/linux/static/stable/x86_64/docker-18.03.1-ce.tgz | tar xzv && \
	cp docker/docker /usr/bin/docker && \
	rm -r docker

## copy analysis file
COPY ./DBAnalytics/ /opt/DBAnalytics/

## copy import folder
COPY ./ImportTool/ /opt/ImportTool/

CMD /usr/local/bin/Rscript /opt/ImportTool/Importer_NewFormat.R
# CMD /usr/local/bin/Rscript /opt/DBAnalytics/init.R
