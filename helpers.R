
plot_gol <- function(board)
{
  library('mmand')
  gameOfLife(init = board, steps = 0, viz = TRUE)
}

create_random_gol <- function(board_size, no_steps)
{
  gameOfLife(size = board_size, steps = no_steps)
}

get_random1_gol_6x6 <- function()
{
  #tmp_beta <- rep(beta, 1)
  matrix(c(0, 0, 0, 1, 1, 0, 0, 1, 1, 0, 0, 1, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 1, 1, 0, 0, 0), 6, 6)
}

get_random2_gol_6x6 <- function()
{
  matrix(c(0, 0, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 1, 0, 0, 0, 0, 0, 1, 1, 0, 1, 0, 0, 0, 1, 1, 0, 0, 0, 1, 0, 1, 1), 6, 6)
}

get_oscilator1_gol_6x6 <- function()
{
  # blinker
  matrix(c(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0), 6, 6)
}

get_oscilator2_gol_6x6 <- function()
{
  # Beacon
  matrix(c(0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0), 6, 6)
}