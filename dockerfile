FROM rocker/verse:3.4.1

MAINTAINER Wolfgang Hamer <hamer@geographie.uni-kiel.de>

COPY . /mytestpkg

RUN . /etc/environment \

 && apt-get update -y \
 && apt-get install -y libudunits2-dev libgdal-dev libgsl0-dev gdal-bin libgeos-dev libpng-dev libproj-dev \

 && R -e "options(repos='https://mran.microsoft.com/snapshot/2017-07-20'); devtools::install('/mytestpkg', dep = TRUE)" \
 && R --vanilla "rmarkdown::render('/mytestpkg/analysis/paper.Rmd')"
