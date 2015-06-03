
plot_gol <- function(board)
{
  library('mmand')
  gameOfLife(init = board, steps = 0, viz = TRUE)
}

create_random_gol <- function(board_size, no_steps)
{
  gameOfLife(size = board_size, steps = no_steps)
}

get_random1_gol <- function()
{
  
}