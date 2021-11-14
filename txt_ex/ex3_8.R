require(fpp2)
# a. Split the data into two parts using
myts.train <- window(myts, end=c(2010,12))
myts.test <- window(myts, start=2011)
# b. Check that your data have been split appropriately by producing the following plot.
autoplot(myts) + 
  autolayer(myts.train, series="Training") +
  autolayer(myts.test, series="Test")
# c. Calculate forecasts using snaive applied to myts.train.
snaive_myts_train <- snaive(myts.train)
# d. Compare the accuracy of your forecasts against the actual values stored in myts.test.
accuracy(snaive_myts_train, myts.test)

# e. Check the residuals. Do the residuals appear to be uncorrelated and normally distributed?
checkresiduals(snaive_myts_train)
# residuals were correlated with each other and not normally distributed
# f. How sensitive are the accuracy measures to the training/test split?
# I thought of sensitivity as the ratio of the test set error to the train set error. When I used the definition, it looked like Mean Error is highly sensitive, RMSE, MAE, MPE, MASE are sensitive and MAPE and ACF1 aren't much sensitive.
# I don't know whether this method is what the author wanted to solve this question about sensitivity.
