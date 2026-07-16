# Assign a value to variable A
A <- 20

# Print the value of A
A


# -------------------------------
# Assign different types of data
# -------------------------------

w = 45        # Integer value
e = 67.5      # Numeric (decimal) value
s = "Amal"    # Character (string) value
r = TRUE      # Logical (boolean) value


# -----------------------------------------
# Display the data type (class) of variables
# -----------------------------------------

class(w)  # Returns "numeric" (R treats integers as numeric)
class(e)  # Returns "numeric"
class(s)  # Returns "character"
class(r)  # Returns "logical"


# -------------------------------
# VECTORS (One-dimensional arrays)
# -------------------------------

vec_num1 = c(1:5)                 # Vector from 1 to 5
vec_num2 = c(20, 10, 30, 25, 40) # Custom numeric vector
vec_num3 = c(1:9)                # Vector from 1 to 9

vec_num4 = c(2, 2, 2)            # Vector with repeated values
vec_num5 = c(2, 4, 6)            # Another numeric vector


# Print vectors
vec_num1
vec_num2
vec_num3


# -------------------------------
# Vector Arithmetic Operations
# -------------------------------

vec_num1 + vec_num2  # Element-wise addition
vec_num1 * vec_num2  # Element-wise multiplication
vec_num1 - vec_num2  # Element-wise subtraction
vec_num1 / vec_num2  # Element-wise division
vec_num5 ^ vec_num4  # Exponentiation (power)


# -------------------------------
# MATRICES (2D Arrays)
# -------------------------------

z = c(1:6)                 # Data for first matrix
u = c(4, 5, 6, 7, 8, 1)   # Data for second matrix

# Create matrix A (filled column-wise)
mat_A = matrix(data = z, nrow = 3, ncol = 2, byrow = FALSE)

mat_A

# Create matrix B (filled row-wise)
mat_B = matrix(data = u, nrow = 3, ncol = 2, byrow = TRUE)

mat_B


# -------------------------------
# Matrix Operations
# -------------------------------

# Matrix addition
add_AB = mat_A + mat_B   
add_AB

# Matrix subtraction
sub_AB = mat_A - mat_B   
sub_AB

# Element-wise division
dev_AB = mat_A / mat_B  
dev_AB

mul_AB = mat_A * mat_B   # Element-wise multiplication
mul_AB


# -------------------------------
# DATA FRAMES
# -------------------------------

a = c(10, 20, 30, 40)   # Numeric vector
b = c(1:4)              # Sequence vector
c = c('M', 'I', 'S', 'O')  # Character vector

# Create a data frame
df_MY = data.frame(a, b, c)

# Rename columns
names(df_MY) = c('ID', 'Values', 'Names')

# Print the data frame
df_MY

# PIE CHART
x = c(25, 45, 52 ,90)
y = c("A","B","c","D")

pie(x, y)

#advance Pie
pie(x,y, main = "Title of the pie chart ", col = rainbow(4))

#percentage cal
r = round(x/sum(x)*100)
r

new_label = paste(r, "%")
new_label

pie(x, new_label, main = "Title of the pie chart", col = rainbow(4))

#Bar charts
bar= c(25,34,76,90)

barplot(bar)

barplot(bar, main="Title of the bar chart")

barplot(bar, main="Title of the bar chart", col = "#16cE84")

barplot(bar, main="Title of the bar chart", col = "#16cE84",
        border = "#CE169E", names.arg= c("A", "B","C", "D"),
        xlab = " Name of the bar chart", ylab = "Y Axix name of the bar chart " )

barplot(bar, main="Title of the bar chart", col = "#16ce84",
        border = "#CE169E", names.arg= c("A", "B","C", "D"),
        xlab = " Name of the bar chart", ylab = "Y Axix name of the bar chart ",
        horiz = TRUE )

#read Dataset
getwd()

Student_data =read.csv("stu.csv", header = TRUE, sep = ",")
Student_data

#Central Tendency
#Measures of location 
#1) Mean (add all values divide by how many values there are)
# ex 6,7,8
#Mean = (6+7+8)/3 = 7
mean(Student_data$Marks)

#2) Median (put numbers in order to pick the middle number)
median(Student_data$Marks)

#3) Mode(Most repeated value)
#find the mode
mode_function <- function(x){
  ux <- unique(x)
  ux[which.max(tabulate(match(x,ux)))]
}

mode_function(Student_data$Marks)

#Measures of Dispersion(Range, Variance, Standalone Deviation,
#IOR, Box plots)
#means how spread out the data is (Measure data variability)
getwd()

Student_data =read.csv("stu.csv", header = TRUE, sep = ",")
Student_data

#Calculate Range
range_marks <- max(Student_data$Marks) - min(Student_data$Marks)
range_marks

#Calculate IOR Interquartile Range
iqr_marks <- IQR(Student_data$Marks)
iqr_marks

#variance and Standard Deviation
var_marks <- var(Student_data$Marks)
var_marks

sd_marks <- sd(Student_data$Marks)
sd_marks

#Box plot
boxplot(Student_data$Marks, main = "Boxplot of Student Marks",
        ylab = "Marks",
        col = "orange",
        border= "brown",
        notch = TRUE)

#Add mean line
abline(h = mean(Student_data$Marks), col = "red", lwd = 2 , lty = 2)

text(x = 1.3, y = mean(Student_data$Marks),
     labels = paste("Mean = ",round(mean(Student_data$Marks),2)),
     col = "red")

#get dataset
getwd()

Student_data =read.csv("stu.csv", header = TRUE, sep = ",")
Student_data

##ANOVA TEST
result <- aov(Marks ~ Gender, data = Student_data)
summary(result)
#             Df Sum Sq Mean Sq F value Pr(>F)
#Gender       1    144   144.1   0.429  0.514
#Residuals   98  32936   336.1
#if Pr(>F) < 0.05 ==> Statically Significant
#the average marks between Males and Females are Significantly different.

#if Pr(>5) >= 0.05 ==> Not Statically Significant
#there is no strong evidence to say marks are different based on gender.

#Frequency Distribution and Interval and midpoint
#1 create class interval 
breaks <- seq(0, 100, by =10) #creates ex :- 0-10, 10-20

#2 cut marks into Intervals
Student_data$Interval <- cut(Student_data$Marks, breaks = breaks, right = FALSE)

#3 Frequency table
freq_table <- table(Student_data$Interval)

freq_table

#Midpoint
midpoint <- (head(breaks, -1) + tail(breaks, -1)) /2
midpoint

#Create Histogram

barplot(freq_table,
        main = "Histogram of Marks",
        xlab = "Marks Range",
        ylab = "Number of Student",
        col = "lightblue",
        border = "black"
)

#Frequency Polygon (Midpoint & Lines)
#Midpoints
midpoints <- (head(breaks, -1) + tail(breaks, -1))/2

#convert frequency table to numaric vectors
freq_values <- as.numeric(freq_table)

#plot frequency polygen
plot(midpoints, freq_values, type = "o",
     main = "Frequency Polygon",
     xlab = "Midpoint of Marks Range",
     ylab="Numeric of Students",
     col = "blue",
     pch = 16)

#Bell Curve
#1 Load data
getwd()

Student_data = read.csv('stu.csv', header = TRUE, sep = ",")
Student_data

#2 Calculate mean and Standard deviation 
#mean

mean_marks <- mean(Student_data$Marks)
mean_marks

#SD

sd_marks <- sd(Student_data$Marks)
sd_marks

# 3) create a sequence of X values
x_values <- seq(min(Student_data$Marks), max(Student_data$Marks), lenght = 10)

# calculate the normal distribution Y values using dnorm()
y_values <- dnorm(x_values, mean = mean_marks, sd = sd_marks)

# 4) plot
plot(x_values, y_values, type = "l", col = "blue", lwd = 2,
     main = "Bell curve of student marks",
     xlab = "Marks", ylab = "Density")

# With Package
install.packages("ggplot2")
library(ggplot2)

#Mean Standard Deviation
mean_marks <- mean()
sd_marks <- sd(Student_data$Marks)

#Bell curve plot
ggplot(Student_data, aes(x = Marks)) + 
  geom_histogram(aes(y=..density..), bins =15, fill = "skyblue",
                 color= "black", alpha = 0.6) + 
  stat_function(fun = dnorm, args = list(mean = mean_marks, sd = sd_marks),
                color = "red", size = 1.2) +
  labs(title = "Bell Curve of Student Marks", x = "Marks", y = "Density")

##Hypothesis testing
# Perform a statistical hypothesis test to determine whether there 
# is a significant difference in the average marks obtained by 
# male and female students
# Provide both numerical and graphical outputs.
# clearly state the null and alternative hypothesis.
# Discuss the practical significance of your findings for 
#academic decision-making (e.g., gender-based performance support programs).
Student_data = read.csv('stu.csv', header = TRUE, sep = ",")
Student_data

# view Gender Breakdown
table(Student_data$Gender)

# Check means
aggregate(Marks ~ Gender, data = Student_data, mean)

#Visual comparison          
boxplot(Marks ~ Gender, data = Student_data, col = c("lightblue", "lightgreen"),
        main = "comparison of Marks by Gender",
        xlab = "Gender", ylab = "Marks")

# Perform two-sample t-test (independent sample)
t_test <- t.test(Marks ~ Gender , data = Student_data, var_equal = FALSE)

#output
print(t_test)

#Interpretation
if(t.test$p.value < 0.05){
  cat("Reject H : There is a statistically significant
      differnce  in average marks between marks between male and female students.\n")
}else {
  cat("Do not reject H: No significant differnce in marks 
      between male and female students.\n")
}

install.packages("modeest")
library(modeest)
#Covariance, Pearson correlation, and Spearman correlation all measure the relationship between two variables, but differ in what they measure and how they interpret the data. Covariance indicates the direction of a linear relationship and is on an unlimited scale. Pearson correlation measures the strength and direction of a linear relationship, with values between -1 and +1. Spearman correlation measures the strength and direction of a monotonic relationship by analyzing the ranks of the data, also with values between -1 and +1. 
#Covariance
#What it is: A measure of the joint variability of two random variables, showing their tendency to move together. 
#What it tells you: It indicates the direction of a relationship. A positive covariance means the variables tend to move in the same direction, while a negative covariance means they move in opposite directions. 
#Scale: Unlimited, ranging from -∞ to +∞. 
#Pearson Correlation Coefficient 
#What it is: A statistical measure that assesses the strength and direction of a linear relationship between two variables.
#What it tells you: It quantifies how well two variables are linearly related.
#Scale: Ranges from -1 to +1.
#+1: Perfect positive linear relationship.
#-1: Perfect negative linear relationship.
#0: No linear relationship.
#Spearman Correlation Coefficient 
#What it tells you: It assesses how well the relationship between two variables can be described using a monotonic function (i.e., a function that is either entirely non-increasing or entirely non-decreasing). It is calculated on the ranks of the data, making it less sensitive to outliers than Pearson correlation.
#Scale: Ranges from -1 to +1.


#Normality testing 
#1)Shapiro wilk testing
shapiro.test(Student_data$Marks)

#shapiro wilk testing
#p> 0.05 =  Data is normally distributed

#2) Histogram for Normality Check
hist(Student_data$Marks,
     main = "Histogram of Marks",
     xlab = "Marks",
     col = "lightblue",
     border = "black")

#Histogram  bell shaped  => Likely norml 

#3) QQ plot for normality check
qqnorm(Student_data$Marks,
       main = "Q-Q plot of Marks")
qqline(Student_data$Marks,
       col = "red",
       lwd = 2)  

#pointer on the straight line = likely normal

#Summary statics for Age and Marks
summary(Student_data[,c("Age", "Marks")])


#Linear Regression & Correlation Analysis
getwd()

Student_data = read.csv('stu.csv', header = TRUE, sep = ",")
Student_data

#correlation Analysis
#-1 to +1
cor(Student_data$Age, Student_data$Marks)

#Covariance Correlation
#measures how to variable change together
#if both increase -> positive Covariance
#if one increases while other decreases -> negative covariance
#Near 0 No linear pattern
cov(Student_data$Age, Student_data$Marks)

#calculate statistics
cov_value <- cov(Student_data$Age, Student_data$Marks)
pearson_value <- cor(Student_data$Age, Student_data$Marks, method = "pearson")
spearman_value <- cor(Student_data$Age, Student_data$Marks, method = "spearman")

#create scatter plot with regression line
plot(Student_data$Age, Student_data$Marks,
     main = "Age vs Marks with Correlation & Covariance",
     xlab = "Age",
     ylab = "Marks",
     pch = 19,
     col = "darkblue")


#Add regression line
model <- lm(Marks ~ Age, data = Student_data)
abline(model, col = "red", lwd= 2)

#Add text box with values
legend_text <- paste("Covariance:", round(cov_value, 2),
                     "\nPearson:", round(pearson_value, 2),
                     "\nSpearman:", round(spearman_value, 2))

#Add text plot
legend("bottomright",legend = legend_text, bty = "n", cex = 0.9, 
       text.col = "black")