require(fpp2)
str(arrivals)
# - Use autoplot, ggseasonplot and ggsubseriesplot to compare the differences between the arrivals from these four countries.
# - Can you identify any unusual observations?
autoplot(arrivals)
# The biggest number of arrivals came from New Zealand in 1980s. And the title owner country changed to Japan in 1990s and came back to UK in 2000s.
# The arrival data of UK shows the biggest quarterly fluctuation.
ggseasonplot(arrivals[, "Japan"])
ggseasonplot(arrivals[, "NZ"])
ggseasonplot(arrivals[, "UK"])
ggseasonplot(arrivals[, "US"])
ggsubseriesplot(arrivals[, "Japan"])
ggsubseriesplot(arrivals[, "NZ"])
ggsubseriesplot(arrivals[, "UK"])
ggsubseriesplot(arrivals[, "US"])

