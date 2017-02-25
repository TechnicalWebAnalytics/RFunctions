getReferrals <- function(view,startDate,endDate,urls){
  results <- NULL
  data <- get_ga(view,
                 start.date = startDate,
                 end.date   = endDate,
                 metrics    = "ga:sessions,ga:newUsers,ga:goalCompletionsAll",
                 dimensions = "ga:source,ga:medium",
                 sort       = "-ga:sessions"
  )
  for(i in 1:length(urls)){
    results <- rbind(data[data$source == urls[i],],results)
  }
  return(results)
}