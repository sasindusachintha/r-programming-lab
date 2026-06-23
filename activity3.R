
getwd()

Studentp =read.csv("student_performance.csv", header = TRUE, sep = ",")
Studentp

##ANOVA TEST
result <- aov(Hours_Studied ~ Assignment_Score, data = Studentp)
summary(result)

# Create class intervals
breaks <- seq(0, 100, by = 10)

# Cut scores into intervals
Studentp$Interval <- cut(Studentp$Final_Exam_Score,
                         breaks = breaks,
                         right = FALSE)

# Frequency table
freq_table <- table(Studentp$Interval)

# Display frequency table
freq_table

# Histogram (Bar Chart style)
barplot(freq_table,
        main = "Histogram of Final Exam Scores",
        xlab = "Score Range",
        ylab = "Number of Students",
        col = "lightblue",
        border = "black")