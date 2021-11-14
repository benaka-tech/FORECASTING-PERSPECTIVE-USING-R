require(fpp2)
require(xlsx)
retaildata <- xlsx::read.xlsx(file.choose(), sheetIndex = 1, startRow = 2)
View(retaildata)
# retaildata <- readxl::read_excel("retail.xlsx", skip=1)
# You may need to first install the readxl package. The second argument (skip=1) is required because the Excel sheet has two header rows.
# b. Select one of the time series as follows (but replace the column name with your own chosen column):
myts <- ts(retaildata[,"A3349873A"], frequency=12, start=c(1982,4))
# c. Explore your chosen retail time series using the following functions: autoplot, ggseasonplot, ggsubseriesplot, gglagplot, ggAcf
#Can you spot any seasonality, cyclicity and trend? What do you learn about the series?
autoplot(myts)
ggseasonplot(myts)
ggsubseriesplot(myts)
gglagplot(myts, lags = 12)
ggAcf(myts)
