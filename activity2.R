
getwd()

Studentp =read.csv("student_performance.csv", header = TRUE, sep = ",")
Studentp

##ANOVA TEST
result <- aov(Hours_Studied ~ Assignment_Score, data = Studentp)
summary(result)

#Frequency Distribution and Interval and midpoint
#1 create class interval 
breaks <- seq(0, 100, by =10) #creates ex :- 0-10, 10-20

#2 cut marks into Intervals
Student_data$Interval <- cut(Studentp$Hours_Studied, breaks = breaks, right = FALSE)

#3 Frequency table
freq_table <- table(Studentp$Interval)

freq_table