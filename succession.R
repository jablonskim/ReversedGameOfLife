succession <- function(population_size, population, population_fitness, new_pop_size, new_population, new_fitness)
{
  final_pop <- new_population
  final_fit <- new_fitness
  
  k <- population_size - new_pop_size
  ndx <- order(unlist(population_fitness))[1:k]
  
  final_pop <- append(final_pop, population[ndx])
  final_fit <- append(final_fit, population_fitness[ndx])
  
  list(Pop = final_pop, Fit = final_fit)
}