require(fpp2)
autoplot(hsales)
ggseasonplot(hsales)
ggsubseriesplot(hsales)
gglagplot(hsales)
ggAcf(hsales, lag.max = 400)
# can spot seasonality and cyclicity. The cycle period is about 4 years(100 months)
autoplot(usdeaths)
ggseasonplot(usdeaths)
ggsubseriesplot(usdeaths)
gglagplot(usdeaths)
ggAcf(usdeaths, lag.max = 60)
# can spot seasonality
autoplot(bricksq)
ggseasonplot(bricksq)
ggsubseriesplot(bricksq)
gglagplot(bricksq)
ggAcf(bricksq, lag.max = 200)
# can spot little seasonality and strong trend
autoplot(sunspotarea)
# ggseasonplot(sunspotarea) 
# not seasonal, can't draw it
# ggsubseriesplot(sunspotarea)
# not seasonal, useless to draw it
gglagplot(sunspotarea)
ggAcf(sunspotarea, lag.max = 50)
# can spot strong cyclicity
autoplot(gasoline)
ggseasonplot(gasoline)
# ggsubseriesplot(gasoline)
# The number of weeks is 52 and it looked like it is too much for subseriesplot
gglagplot(gasoline)
ggAcf(gasoline, lag.max = 1000)
# can spot seasonality and trend
