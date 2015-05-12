uniform_crossover <- function(board_a, board_b)
{
  n <- nrow(board_a)
  m <- ncol(board_a)
  
  board_c <- board_a
  
  for(i in 1:n)
  {
    for(j in 1:m)
    {
      if(sample(0:1, 1) == 1)
      {
        board_c[i, j] <- board_b[i, j]
      }
    }
  }
  
  board_c
}

onepoint_crossover <- function(board_a, board_b)
{
  n <- nrow(board_a)
  m <- ncol(board_a)
  k <- n * m
  s <- sample(1:k, 1)
  
  board_c <- board_a
  
  x <- 0
  
  for(i in 1:n)
  {
    for(j in 1:m)
    {
      x <- x + 1
      if(x >= s)
      {
        board_c[i, j] <- board_b[i, j]
      }
    }
  }
  
  board_c
}