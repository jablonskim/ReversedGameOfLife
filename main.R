
  library('mmand')
  library('reportr')
  setOutputLevel(OL$Warning)

  source('game_of_life.R')

  board_size <- c(50, 50)
  steps_range <- c(5, 10)
  population_size <- 25

  beta <- get_random_gol_50x50() # create_random_gol(board_size, 100)
  plot_gol(beta)
  beta

  alpha <- reverse(beta, steps_range, population_size)

  alpha
  plot_gol(alpha)
