boards_distance <- function(a, b)
{
  d <- 0
  
  for(row in 1:nrow(a))
  {
    for(col in 1:ncol(a))
    {
      if(a[row, col] != b[row, col])
      {
        d <- d + 1
      }
    }
  }
  
  d
}

fitness_function <- function(board, final_board, steps_range)
{
  from <- steps_range[1]
  to <- steps_range[2]
  
  new_board <- gameOfLife(init = board, steps = from)
  best <- boards_distance(new_board, final_board)
  
  if(from < to)
  {
    for(i in (from + 1):to)
    {
      new_board <- gameOfLife(init = new_board, steps = 1)
      dist <- boards_distance(new_board, final_board)
      if(dist < best)
      {
        best <- dist
      }
    }
  }
  
  best
}

fitness_of_population <- function(k, population, final_board, steps_range)
{
  fitness <- list()
  
  for(i in 1:k)
  {
    fitness[[i]] <- fitness_function(population[[i]], final_board, steps_range)
  }
  
  fitness
}