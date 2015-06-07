
source('crossovers.R')
source('selections.R')
source('fitness.R')
source('mutation.R')
source('helpers.R')
source('succession.R')

initialize <- function(k, n, m)
{
  population <- list()
  
  for(i in 1:k)
  {
    population[[i]] <- gameOfLife(size = c(n, m), steps = 0)
  }
  
  population
}

reverse <- function(final_board, steps_range, population_size)
{
  library('mmand')
  
  n <- nrow(final_board)
  m <- ncol(final_board)
  
  mutation_prob <- 0.1
  crossover_prob <- 0.3
  succession_rate <- 0
  tournament_size <- 3
  
  crossover <- uniform_crossover
  selection <- tournament_selection
  
  population <- initialize(population_size, n, m)
  population_fitness <- fitness_of_population(population_size, population, final_board, steps_range)
  new_pop_size <- population_size - succession_rate
  
  for(s in 1:1000)
  {
    new_population <- list()
    
    for(i in 1:new_pop_size)
    {
      if(runif(1) <= crossover_prob)
      {
        board_a <- selection(population_size, population, population_fitness, tournament_size)
        board_b <- selection(population_size, population, population_fitness, tournament_size)
        
        new_population[[i]] <- mutation(crossover(board_a, board_b), mutation_prob)
      }
      else
      {
        new_population[[i]] <- mutation(selection(population_size, population, population_fitness, tournament_size), mutation_prob)
      }
    }
    
    new_fitness <- fitness_of_population(new_pop_size, new_population, final_board, steps_range)
    ret <- succession(population_size, population, population_fitness, new_pop_size, new_population, new_fitness)
    population <- ret$Pop
    population_fitness <- ret$Fit
    
    min_fit <- population_fitness[[which.min(population_fitness)]]
    cat(sprintf("%4d: %d\n", s, min_fit))
    if(min_fit == 0)
      break
  }
  
  population[[which.min(population_fitness)]]
}