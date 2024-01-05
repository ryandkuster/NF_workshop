get_squares <- function(input_ls) {
  squares_ls <- c()
  for (i in input_ls) {
    squares_ls <- c(squares_ls, i**2)
  }
  return(squares_ls)
}

test_ls <- c (1:10)
test_squares <- get_squares(test_ls)
print(test_squares)
#print(squares_ls)
