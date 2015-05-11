
plot_gol <- function(board)
{
  library('mmand')
  gameOfLife(init = board, steps = 0, viz = TRUE)
}

boards_distance <- function(a, b)
{
  d <- 0
  
  for(row in 1:nrow(a))
  {
    for(col in 1:ncol(a))
    {
      if(a[row, col] != b[row, col])
      {
        d <- d + 1
      }
    }
  }
  
  d
}

reverse <- function(final_board, steps_range, population_size)
{
  library('mmand')
  gameOfLife(init = final_board, steps = 1)
}