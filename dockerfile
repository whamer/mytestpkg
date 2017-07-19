FROM rocker/verse:3.4.1

MAINTAINER Wolfgang Hamer <hamer@geographie.uni-kiel.de>

COPY . /mytestpkg

RUN . /etc/environment \

&& R --vanilla "devtools::install('/mytestpkg',dep=TRUE)" \

&& R --vanilla "rmarkdown::render('/mytestpkg/analysis/paper.rmd')"
