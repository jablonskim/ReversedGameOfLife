truncation_selection <- function(k, population, fitness, tournament_size)
{
  # TODO
}

tournament_selection <- function(k, population, fitness, tournament_size)
{
  t_fit <- list()
  t_pop <- list()
  
  for(i in 1:tournament_size)
  {
    x <- sample(1:k, 1)
    t_fit[[i]] <- fitness[[x]]
    t_pop[[i]] <- population[[x]]
  }
  
  t_pop[[which.min(t_fit)]]
}

proportional_selection <- function(k, population, fitness, tournament_size)
{
  # TODO
}