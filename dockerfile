FROM rocker/verse:3.4.1

MAINTAINER Wolfgang Hamer <hamer@geographie.uni-kiel.de>

COPY . /mytestpkg

RUN . /etc/environment \

  && R -e "devtools::install('mytestpkg',dep=TRUE)" \

  && R -e "rmarkdown::render('mytestpkg/analysis/paper.rmd')"
