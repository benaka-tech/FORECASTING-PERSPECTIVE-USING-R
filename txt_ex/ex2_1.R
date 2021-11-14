require(fpp2)
# See the structures of datas
str(gold)
str(woolyrnq)
str(gas)
# a. Use autoplot to plot each of these in separate plots.
autoplot(gold)
autoplot(woolyrnq)
autoplot(gas)
writeLines("")
# b. What is the frequency of each commodity series? Hint: apply the frequency() function.
print("Frequency")
print("gold")
frequency(gold)
print("woolyrnq")
frequency(woolyrnq)
print("gas")
frequency(gas)
writeLines("")
# c. Use which.max() to spot the outlier in the gold series. Which observation was it?
print("When gold got maximum value?")
which.max(gold)
print("What was the gold's maximum value?")
gold[which.max(gold)]

