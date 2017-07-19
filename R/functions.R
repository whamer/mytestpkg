#' iseven
#'
#' @param x number to test if it is even or not or is it?
#'
#' @return a simple character
#' @export
#'
#' @examples
#' iseven(4)

iseven=function(x){
  if(x %% 2 == 0){
    asd="Indeed it is an even number!"
  }else{
    asd="Of course not you silly fool!"
  }
  return(asd)
}



#' returnname
#'
#' @param x a character string
#'
#' @return a returned character string
#' @export
#'
#' @examples
#' returnname("Wolfgang")

returnname=function(x){
  asd=NA
  for(i in nchar(x):1){
    asd=c(asd,substr(x,i,i))
  }
  asd=asd[-1]
  asd=paste(asd, sep="", collapse="")
  return(asd)
}


#' pipeme
#'
#' @param dataset a dataframe
#' @param column a columncontent as character
#'
#' @return a column vector
#' @export
#'
#' @examples
#' asd=data.frame(Values=c(1,2,3,4),else=c(2,3,4,5))
#' pipeme(asd,"val")
#'
#' @import tidyverse

pipeme=function(dataset,column,value){
  dataset %>%
    select(contains(column))
    #filter_(eval(paste("~", column)) == value)
}
