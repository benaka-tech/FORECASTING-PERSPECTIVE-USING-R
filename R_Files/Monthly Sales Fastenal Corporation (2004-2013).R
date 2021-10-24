require(fpp2)
Fastenal = read.csv(file.choose(),header=T)
names(Fastenal)
TotSales = Fastenal$Total.Sales
TotSales = ts(TotSales,start=2004,frequency=12)
TotSales = TotSales/1000000
TotSales
autoplot(TotSales) + ggtitle("Total Monthly Sales (2004-2013)") + xlab("Year") + ylab("Monthly Sales in Millions")
ggseasonplot(TotSales) + ylab("Sales in Millions") + xlab("Month")
ggseasonplot(TotSales,polar=T) + ylab("Sales in Millions") + ggtitle("Polar Seasonal Plot: Total Monthly Sales")
ggsubseriesplot(TotSales) + ggtitle("Seasonal Subseries Plot = Fastenal Monthly Sales") + xlab("Month") + ylab("Millions of $")
