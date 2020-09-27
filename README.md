
<!-- README.md is generated from README.Rmd. Please edit that file -->

# hw04ptwyunting

<!-- badges: start -->

<!-- badges: end -->

The goal of hw04ptwyunting is to …

## Author

My name is Yunting Chiu, and I am a Data Science student at American
University. For more details please visit my
[LinkedIn](https://www.linkedin.com/in/yuntingchiu/).

## Installation

You can install the released version of `hw04ptwyunting` by asking me.  
My GitHub ID is: [twyunting](https://github.com/twyunting) or mailing
me: <yc6705a@american.edu>

``` r
install.packages("hw04ptwyunting")
```

## Example

Consider the recursive sequence defined by \[
x_n = x_{n-1} + \frac{x_{n-3} - x_{n-2}}{n}
\]  
\- That is, element n is the sum of element n−1 and the value of the
difference between elements n−3 and n−2 divided by two.  
\- For example, if we let x1=3, x2=1, and x3=10, then x4 is \[
x_4 = 10 + \frac{3 - 1}{4} = 10.5
\]  
\- This is a basic example which shows you how to calculate this
formula:

``` r
library(hw04ptwyunting)
myseq_n(x = c(2, 3, 3), n = 3)
#> [1] 3
myseq_n(x = c(2, 4, 3), n = 4)
#> [1] 2.5
myseq_n(x = c(2, 4, 3), n = 5)
#> [1] 2.7
myseq_n(x = c(2, 4, 3), n = 6)
#> [1] 2.783333
myseq_n(x = c(2, 4, 3), n = 7)
#> [1] 2.754762
```
