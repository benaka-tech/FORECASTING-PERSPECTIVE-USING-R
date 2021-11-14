require(fpp2)
autoplot(ibmclose)
# b. Split the data into a training set of 300 observations and a test set of 69 observations.
ibm_train <- subset(ibmclose, end = 300)
ibm_test <- subset(ibmclose, start = 301)
# c. Try using various benchmark methods to forecast the training set and compare the results on the test set. Which method did best?
snaive_ibm <- snaive(ibm_train, h = 69)
naive_ibm <- naive(ibm_train, h = 69)
drift_ibm <- rwf(ibm_train, drift = TRUE, h = 69)
mean_ibm <- meanf(ibm_train, h = 69)
autoplot(snaive_ibm) +
  autolayer(ibm_test)
autoplot(naive_ibm) +
  autolayer(ibm_test)
autoplot(drift_ibm) +
  autolayer(ibm_test)
autoplot(mean_ibm) +
  autolayer(ibm_test)
writeLines("Snaive method")
accuracy(snaive_ibm, ibm_test)
writeLines("\nNaive method")
accuracy(naive_ibm, ibm_test)
writeLines("\nDrift method")
accuracy(drift_ibm, ibm_test)
writeLines("\nMean method")
accuracy(mean_ibm, ibm_test)
e_snaive_ibm <- ibm_test - snaive_ibm$mean
e_naive_ibm <- ibm_test - naive_ibm$mean
e_drift_ibm <- ibm_test - drift_ibm$mean
e_mean_ibm <- ibm_test - mean_ibm$mean
autoplot(e_snaive_ibm^2, series = "snaive method") +
  autolayer(e_naive_ibm^2, series = "naive method") +
  autolayer(e_drift_ibm^2, series = "drift method") +
  autolayer(e_mean_ibm^2, series = "mean method") +
  guides(colour = guide_legend(title = "Forecast")) +
  ggtitle("Errors of the forecast of closing IBM stock price") +
  ylab(expression(paste("erro", r^{2})))
# Drift method did best
# Time series cross-validation method of tsCV function don't use full data unless h = 1. For example, if usable data has 100 points and h = 3, tsCV predicts 101st point with 98 points, 102nd with 99 points and 103rd with 100 points. Therefore error result value of tsCV cannot help differing from the values of accuracy function. Accuracy function always get result from full data.
ibmclose %>% tsCV(forecastfunction = snaive, h = 69) ->  e_snaive_ibm_CV
ibmclose %>% tsCV(forecastfunction = naive, h = 69) ->  e_naive_ibm_CV
ibmclose %>% tsCV(forecastfunction = rwf, drift = TRUE, h = 69) ->  e_drift_ibm_CV
ibmclose %>% tsCV(forecastfunction = meanf, h = 69) ->  e_mean_ibm_CV
autoplot(subset(e_snaive_ibm_CV^2, start = 301), series = "snaive method") +
  autolayer(subset(e_naive_ibm_CV^2, start = 301), series = "naive method") +
  autolayer(subset(e_drift_ibm_CV^2, start = 301), series = "drift method") +
  autolayer(subset(e_mean_ibm_CV^2, start = 301), series = "mean method") +
  guides(colour = guide_legend(title = "Forecast")) +
  ggtitle("Errors of the forecast of closing IBM stock price",
          subtitle = "after using tsCV function") +
  theme(plot.title = element_text(hjust = 0.5),
        plot.subtitle = element_text(hjust = 0.5)) +
  ylab(expression(paste("erro", r^{2})))
# Based on the returned results of tsCV function, I would've selected naive method because it yielded smallest error.

# d. Check the residuals of your preferred method. Do they resemble white noise?
checkresiduals(naive_ibm)
checkresiduals(drift_ibm)

