FROM rocker/r-base

RUN apt-get update
RUN apt-get install -y libcurl4-openssl-dev libssl-dev libssh2-1-dev libxml2-dev
RUN R -e "install.packages('devtools')"
RUN R -e "devtools::install_github('software-github/SCRABBLE/R')"
