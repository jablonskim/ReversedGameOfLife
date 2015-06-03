mutation <- function(board, prob)
{
  new_board <- board
  
  for(i in 1:nrow(board))
  {
    for(j in 1:ncol(board))
    {
      if(runif(1) <= prob)
      {
        new_board[i, j] <- 1 - new_board[i, j]
      }
    }
  }
  
  new_board
}

mutation_ex <- function(board, prob)
{
  new_board <- board
  n <- nrow(board)
  m <- ncol(board)
  
  for(i in 1:n)
  {
    for(j in 1:m)
    {
      if(new_board[i, j] == 1 || 
           (i - 1 > 0 && new_board[i - 1, j] == 1) || 
           (i + 1 <= n && new_board[i + 1, j] == 1) || 
           (j - 1 > 0 && new_board[i, j - 1] == 1) || 
           (j + 1 <= m && new_board[i, j + 1] == 1))
      {
        if(runif(1) <= prob)
        {
          new_board[i, j] <- 1 - new_board[i, j]
        }
      }
    }
  }
  
  new_board
}