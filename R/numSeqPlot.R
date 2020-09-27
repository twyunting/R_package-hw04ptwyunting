#' Plot a graph from myseq_n
#' @description The first three columns are the values of the three numerics to be input to function myseq_n() and the fourth column is the positive integer n for the sequence to be generated.
#' This function should return a line plot of the output values for the different values of n.
#' @param nums the input from the same package called function myseq_n
#'
#' @return This function should return a line plot of the output values for the different values of n.
#' @export numSeqPlot
#' @examples
#' # testing the function as data frame
#' my_data <- tribble(
#' ~x, ~y, ~z, ~n,
#' 2,4,3,3,
#' 2,4,3,4,
#' 2,4,3,5,
#' 2,4,3,6,
#' 2,4,3,7,
#' 2,4,3,8,
#' 2,4,3,9,
#' 2,4,3,10,
#' 2,4,3,12)
#'numSeqPlot(my_data)
numSeqPlot <- function(nums){
  stopifnot(length(nums) == 4) # error check the length of function
  stopifnot(nums[4] > 0) # error check the fourth column is a positive integer

  df <- data_frame(n = 0, output = 0) # build a blank data frame
  nums <- tibble(nums) # named nums as tibble
  for (i in 1:nrow(nums)) {
    x <- c(nums[[i, 1]], nums[[i, 2]], nums[[i, 3]]) # extract x, y, z
    n <- nums[[i, 4]] # extract n
    myseq_n(x, n) -> df[i, 2] # the second column
    n -> df[i, 1] #the first column
  }

  graphic <- df %>% # make a graphic
    ggplot(mapping = aes(x = n, y = output)) +
    geom_line()
  #labs(title = "My Sequence:"paste(df[ , 2])

  return(graphic)
}

