tute1 <- read.csv(file.choose(), header=TRUE)
View(tute1)
# b. Convert the data to time series
mytimeseries <- ts(tute1[,-1], start=1981, frequency=4)
# (The [,-1] removes the first column which contains the quarters as we don't need them now.)
# c. Construct time series plots of each of the three series
autoplot(mytimeseries, facets=TRUE)
# Check what happens when you don't include facets=TRUE.
autoplot(mytimeseries)
