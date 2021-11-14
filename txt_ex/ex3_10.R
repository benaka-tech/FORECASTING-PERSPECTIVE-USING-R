require(fpp2)
autoplot(dowjones)
# b. Produce forecasts using the drift method and plot them.
drift_dj <- rwf(dowjones, drift = TRUE)
autoplot(drift_dj)
# c. Show that the forecasts are identical to extending the line drawn between the first and last observations.
dj_x <- c(1, 78)
dj_y <- c(dowjones[1], dowjones[78])
lm_dj <- lm(dj_y ~ dj_x)
# It looked like ggplot2 package isn't compatible to graphics package that autoplot function, made of ggplot2 can't be worked with graphics function like abline, etc. When I tried it, 'plot.new has not been called yet' error appeared.
autoplot(drift_dj) +
  geom_abline(intercept = lm_dj$coefficients[1],
              slope = lm_dj$coefficients[2],
              colour = "red")
autoplot(drift_dj) +
  geom_line(aes(x = c(1, 78),
                y = dowjones[c(1, 78)]), 
            colour = "red")
# d. Try using some of the other benchmark functions to forecast the same data set. Which do you think is best? Why?
checkresiduals(drift_dj)
mean_dj <- meanf(dowjones)
autoplot(mean_dj)
naive_dj <- naive(dowjones)
autoplot(naive_dj)
checkresiduals(naive_dj)
snaive_dj <- snaive(dowjones, h = 10)
autoplot(snaive_dj)
