require(fpp2)
autoplot(hsales)
# b. Split the hsales data set into a training set and a test set, where the test set is the last two years of data.
hsales_train <- subset(hsales, end = length(hsales) - 24)
hsales_test <- subset(hsales, start = length(hsales) - 23)
# c. Try using various benchmark methods to forecast the training set and compare the results on the test set.  Which method did best?
snaive_hsales <- snaive(hsales_train, h = 24)
naive_hsales <- naive(hsales_train, h = 24)
drift_hsales <- rwf(hsales_train, drift = TRUE, h = 24)
mean_hsales <- meanf(hsales_train, h = 24)
autoplot(snaive_hsales) +
  autolayer(hsales_test)
autoplot(naive_hsales) +
  autolayer(hsales_test)
autoplot(drift_hsales) +
  autolayer(hsales_test)
autoplot(mean_hsales) +
  autolayer(hsales_test)
writeLines("Snaive method")
accuracy(snaive_hsales, hsales_test)
writeLines("\nNaive method")
accuracy(naive_hsales, hsales_test)
writeLines("\nDrift method")
accuracy(drift_hsales, hsales_test)
writeLines("\nMean method")
accuracy(mean_hsales, hsales_test)
# Seasonal naive method did the best.
# d. Check the residuals of your preferred method. Do they resemble white noise?
checkresiduals(snaive_hsales) 
