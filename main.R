
library('mmand')
library('reportr')
setOutputLevel(OL$Warning)

source('game_of_life.R')

board_size <- c(6, 6)
steps_range <- c(5, 10)
population_size <- 5

beta <- create_random_gol(board_size, 8)
plot_gol(beta)
beta

alpha <- reverse(beta, steps_range, population_size)

alpha
plot_gol(alpha)