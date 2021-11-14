require(fpp2)
retaildata <- xlsx::read.xlsx("retail.xlsx", sheetIndex = 1, startRow = 2)
myts <- ts(retaildata[,"A3349873A"], frequency=12, start=c(1982,4))
lambda_retail <- BoxCox.lambda(myts)
print(c("selected lambda:", lambda_retail))
fc_retail <- rwf(myts, 
                 drift = TRUE, 
                 lambda = lambda_retail,
                 h = 50,
                 level = 80)
fc_retail_biasadj <- rwf(myts, 
                         drift = TRUE, 
                         lambda = lambda_retail,
                         h = 50,
                         level = 80,
                         biasadj = TRUE)
autoplot(myts) +
  autolayer(fc_retail, series = "Drift method with Box-Cox Transformation") +
  autolayer(fc_retail_biasadj$mean, series = "Bias Adjusted") +
  guides(colour = guide_legend(title = "Forecast"))