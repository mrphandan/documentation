library(plotly)

py <- plotly(username='TestBot', key='r1neazxo9w')

eq <- function(x) {x*x}
tmp <- data.frame(x=1:50, y=eq(1:50))

p <- qplot(x, y, data=tmp, xlab="X-axis", ylab="Y-axis")
c <- stat_function(fun=eq)

out <- py$ggplotly(p + c)

plotly_url <- out$response$url
