
library('mmand')
library('reportr')
setOutputLevel(OL$Warning)

source('game_of_life.R')

board_size <- c(20, 20)
steps_range <- c(20, 30)
population_size <- 100

beta <- gameOfLife(size = board_size, steps = 25)
plot_gol(beta)

alpha <- reverse(beta, steps_range, population_size)

alpha