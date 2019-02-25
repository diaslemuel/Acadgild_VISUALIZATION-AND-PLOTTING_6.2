#a. Is there any difference in fares by different class of tickets?
#Note - Show a boxplot displaying the distribution of fares by class
#use titanic dataset

install.packages("tidyverse")
library(tidyverse)
install.packages("readxl")
library(readxl)
titanic <- read_excel("C:/Users/Tyke/Downloads/titanic3.xls",
                       col_types = c("numeric", "numeric", "text",
                                     "text", "numeric", "numeric", "numeric",
                                     "text", "numeric", "text", "text",
                                     "text", "numeric", "text"))
View(titanic)

boxplot(fare~pclass,data= titanic,
        main="Fares Versus Pclass",xlab="Class",ylab="Fares",col=topo.colors(3))



# b. Is there any association with Passenger class and gender?
#  Note - Show a stacked bar chart

counts<-table(titanic$sex,titanic$pclass)
barplot(counts, main = "Distribution of Class by gender", xlab="Pclass", col=c("blue", "red"), legend = c("Female","Male"), names.arg = c("Pclass1st", "Pclass2nd","Pclass3rd"))
