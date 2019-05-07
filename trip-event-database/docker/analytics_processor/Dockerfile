FROM rocker/r-ver:3.5.0

## dependencies for R packages
RUN apt-get update && \
	apt-get -y install wget libpq-dev libxml2-dev libcurl4-openssl-dev libssl-dev libz-dev

## install R packages
RUN R -e "install.packages(c('tidyverse', 'dbplyr', 'lubridate', 'DBI', 'RPostgres', 'jsonlite'))"

## copy analysis files and keep local folder structure to allow source statements that work in container and locally
COPY docker/analytics_processor/ /opt/Rscripts/docker/analytics_processor/
COPY helpers/ /opt/Rscripts/helpers

CMD /usr/local/bin/Rscript /opt/Rscripts/docker/analytics_processor/init.R
