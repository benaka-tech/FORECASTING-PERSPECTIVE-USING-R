MaunaLoa = read.csv(file.choose(),header=T)
names(MaunaLoa)
co2.ts = ts(MaunaLoa$CO2,start=1959,frequency=12)
autoplot(co2.ts) + ggtitle("CO2 Levels - Mauna Loa Observatory (1959-1997)") + xlab("Year") + ylab("CO2 Concentration (ppm)")
