setwd("D:\\msit2\\DataMining\\Final Exam\\Question2")
data = read.csv("apriori_data.csv", header = TRUE);
View(data)
data$TID <- NULL
install.packages("arules") 
library(arules)

write.csv(data, "ItemList.csv", quote = FALSE, row.names = TRUE)
transactions = read.transactions("ItemList.csv", sep=',', rm.duplicates = TRUE)
inspect(transactions)

frequent_itemsets <- apriori(transactions, parameter = list(sup = 0.03, conf = 0.5,target="frequent itemsets"))

inspect(sort(frequent_itemsets)[1:15])

itemFrequencyPlot(transactions, topN = 5, col="red")