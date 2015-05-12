
plot_gol <- function(board)
{
  library('mmand')
  gameOfLife(init = board, steps = 0, viz = TRUE)
}