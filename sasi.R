#Assing value for A
A <- 20

#print A with value
A

w = 45
e = 67.5
s = "Amal"
r = TRUE


class(w)
class(e)
class(s)
class(r)

#vectors
#one dimensional arrays
vec_num1 = c(1:5)
vec_num2 = c(20, 10, 30, 25, 40)
vec_num3 = c(1:9)

vec_num4 = c(2,2,2)
vec_num5 = c(2,4,6)

vec_num1
vec_num2
vec_num3

#vector Arithmetic
vec_num1+vec_num2
vec_num1*vec_num2
vec_num1-vec_num2
vec_num1/vec_num2
vec_num5^vec_num4

#Matrix
# 2 Dimensional Arrays
z = c(1:6)
u = c(4,5,6,7,8,1)
mat_A = matrix(data = z, nrow = 3, ncol=2, byrow = "False")

mat_A
mat_B = matrix(data = u, nrow = 3 , ncol = 2, byrow = "True")

mat_B

#addition
add_AB = mat_A+mat_B
add_AB

#substraction
sub_AB = mat_A-mat_B
sub_AB

#Devition
dev_AB = mat_A/mat_B
mul_AB

#Multiplication
mul_AB = mat_A*mat_B
mul_AB

#Data Frames
a = c(10, 20, 30, 40)
b = c(1:4)
c = c('M','I','S','O')

df_MY = data.frame(a,b,c)
names(df_MY) = c('ID', 'Values', 'Names')
df_MY
