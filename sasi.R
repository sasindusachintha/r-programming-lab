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
   
     
