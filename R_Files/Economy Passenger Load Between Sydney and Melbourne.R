require(fpp2)
MelSyd = read.csv(file.choose(),header=T)
names(MelSyd)
Econ = MelSyd$Economy.Class
Econ = ts(Econ,start=c(1987,25),frequency=52)
Econ
autoplot(Econ) + ggtitle("Melbourne-Sydney Economy Air Passengers") + xlab("Year") + ylab("Thousands of Passengers")
