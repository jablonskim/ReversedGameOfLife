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
  max_fit <- fitness[[which.max(fitness)]]
  sum_fit <- 0
  
  for(i in 1:k)
  {
    sum_fit <- sum_fit + (max_fit - fitness[[i]]) + 1
  }
  
  rand_val <- runif(1, 0, sum_fit)
  curr <- 0
  os <- 0
  
  for(i in 1:k)
  {
    curr <- curr + (max_fit - fitness[[i]]) + 1
    if(curr > rand_val)
    {
      os <- population[[i]]
      break
    }
  }
  
  if(length(os) < 2)
    print("err")
  
  os
}