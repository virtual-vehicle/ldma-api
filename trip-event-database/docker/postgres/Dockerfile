FROM timescale/timescaledb-postgis:1.2.1-pg11

## remove the crazy timescale startup scripts that overwrite the config
RUN rm /docker-entrypoint-initdb.d/*.sh

## dependencies to build pg_cron
RUN apk update && \
    apk add --virtual build-dependencies build-base git
	
## clone pg_cron
RUN cd ~ && \
    git clone https://github.com/citusdata/pg_cron.git && \
    cd pg_cron && \
    git checkout tags/v1.1.3


## build pg_cron
## it does not build without warnings under alpine, so we remove -Werror 
## -Wno-implicit-fallthough seems to be unrecognized under alpline
RUN cd ~/pg_cron/ && \
    sed -i.bak -e 's/-Werror//g' Makefile && \
    sed -i.bak -e 's/-Wno-implicit-fallthrough//g' Makefile && \
    make && \
    make install
