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
    asd="Of course not you fool!"
  }
  return(asd)
}
