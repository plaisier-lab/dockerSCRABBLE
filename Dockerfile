FROM rocker/r-base

run apt-get update && \
    apt-get install -y libcurl4-openssl-dev libssl-dev libssh2-1-dev libxml2-dev && \
    R -e "install.packages('devtools')" \
    R -e "install_github('software-github/SCRABBLE/R')"
