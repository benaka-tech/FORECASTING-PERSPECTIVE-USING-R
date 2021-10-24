require(fpp2)
AusBeer=read.csv(file.choose(),header=T)
View(AusBeer)
names(AusBeer)
str(AusBeer)
Beer = AusBeer$Beer.Production
Beer = ts(Beer,frequency=4,start=1956)
autoplot(Beer)+ggtitle("Quarterly Australian Beer Production (1956 - 2010)") + xlab("Year")+ ylab("Beer Production (ML)")
Beersub = window(Beer,start=1995)
autoplot(Beersub)+ggtitle("Quarterly Australian Beer Production (1995 - 2010)") + xlab("Year") + ylab("Beer Production (ML)")

