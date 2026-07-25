# 📊 R Data Analysis & Statistical Computing Project
This project demonstrates fundamental to advanced concepts in **R programming**, including data structures, statistical analysis, and data visualization. It is designed as a practical learning resource for students and beginners in data science.

---

## 🚀 Features

- Variable assignment and data types  
- Vector and matrix operations  
- Data frame creation and manipulation  
- Data visualization (Pie charts, Bar charts, Histogram, Boxplot)  
- Statistical analysis:
  - Mean, Median, Mode  
  - Variance & Standard Deviation  
  - Range & Interquartile Range (IQR)  
- Hypothesis testing:
  - t-test  
  - ANOVA  
- Correlation & Covariance analysis  
- Normality testing:
  - Shapiro-Wilk Test  
  - Histogram & Q-Q Plot  
- Regression and relationship analysis  
- Frequency distribution & class intervals  

---

## 📂 Project Structure

```
project-folder/
│── main.R            # Full R script
│── stu.csv           # Dataset (Student data)
│── README.md         # Documentation
```

---

## 🧠 Concepts Covered

### Data Types & Variables
```r
w = 45
class(w)
```

### Vectors & Operations
```r
vec_num1 = c(1:5)
vec_num2 = c(20, 10, 30, 25, 40)
vec_num1 + vec_num2
```

### Matrices
```r
z = c(1:6)
mat_A = matrix(data = z, nrow = 3, ncol = 2)
```

### Data Frames
```r
a = c(10, 20, 30, 40)
b = c(1:4)
c = c('M', 'I', 'S', 'O')
df_MY = data.frame(a, b, c)
```

---

## 📊 Data Visualization
- Pie Charts  
- Bar Charts  
- Histograms  
- Boxplots  
- Frequency Polygons  
- Bell Curve (Normal Distribution)  

Example:
```r
x = c(25, 45, 52 ,90)
y = c("A","B","C","D")
pie(x, y, main="Pie Chart", col=rainbow(4))
```

---

## 📈 Statistical Analysis

### Central Tendency
- Mean  
- Median  
- Mode  

### Dispersion
- Range  
- Variance  
- Standard Deviation  
- IQR  

Example:
```r
mean(Student_data$Marks)
sd(Student_data$Marks)
```

---

## 🧪 Hypothesis Testing

### ANOVA Test
```r
result <- aov(Marks ~ Gender, data = Student_data)
summary(result)
```

### t-Test
```r
t.test(Marks ~ Gender, data = Student_data)
```

---

## 🔗 Correlation & Regression
- Pearson Correlation  
- Spearman Correlation  
- Covariance  

```r
cor(Student_data$Age, Student_data$Marks)
```

---

## 📉 Normality Testing

- Shapiro-Wilk Test  
- Histogram  
- Q-Q Plot  

```r
shapiro.test(Student_data$Marks)
```

---

## 📌 Dataset

The project uses a CSV dataset (`stu.csv`) containing student details such as:
- Marks  
- Gender  
- Age  

Example:
```r
Student_data = read.csv("stu.csv", header = TRUE)
```

---

## ⚙️ Requirements

- R or RStudio  

Install required package:
```r
install.packages("ggplot2")
```

---

## 🎯 Purpose

This project is ideal for:
- Students learning R programming  
- Beginners in Data Science  
- Practice for Statistics & Data Analysis coursework  

---

## 👨‍💻 Author

Sasindu Sachintha  
Software Engineering Student  

---

## 📜 License

This project is free to use for educational purposes.
