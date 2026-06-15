
getwd()

studentp =read.csv("student_performance.csv", header = TRUE, sep = ",")
studentp

#Calculate Range
range_marks <- max(studentp$Final_Exam_Score) - min(studentp$Final_Exam_Score)
range_marks

#Calculate IOR Interquartile Range
iqr_marks <- IQR(studentp$Final_Exam_Score)
iqr_marks

#variance and Standard Deviation
var_marks <- var(studentp$`Final_Exam_Score`)
var_marks

sd_marks <- sd(studentp$Final_Exam_Score)
sd_marks
