require(fpp2)
help(bicoal)
help(chicken)
help(dole)
help(usdeaths)
help(lynx)
help(goog)
help(writing)
help(fancy)
help(a10)
help(h02)
# - For the goog plot, modify the axis labels and title.
autoplot(goog) +
  ggtitle("Daily closing stock prices of Google Inc.") +
  xlab("Time") +
  ylab("Price(Unit: US$)")
