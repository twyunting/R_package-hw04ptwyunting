myseq_n <- function(x, n){
  if (length(x) == 3){
    if(n > 0){
      nums <- vector(mode = "integer", length = n)
      for(i in seq_along(nums)){
        if(i <= 3){
          nums[i] <- x[i]
        }else{
          nums[i] <- nums[i-1] + (nums[i-3] - nums[i-2])/i
        }

      }
      return(nums[n])
    }else{
      stop("n must > 0 and n must be an integer")

    } # error check n
  }else{
    stop("the length of x should be 3")

  } # error check x at least 3
} # created myseq_n function

# Test function
myseq_n(x = c(2, 3, 3), n = 3)
myseq_n(x = c(2, 4, 3), n = 4)
myseq_n(x = c(2, 4, 3), n = 5)
myseq_n(x = c(2, 4, 3), n = 6)
myseq_n(x = c(2, 4, 3), n = 7)

