mutation <- function(board, prob)
{
  new_board <- board
  
  for(i in 1:nrow(board))
  {
    for(j in ncol(board))
    {
      if(runif(1) <= prob)
      {
        new_board[i, j] <- 1 - new_board[i, j]
      }
    }
  }
  
  new_board
}