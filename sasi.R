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

add_AB = mat_A + mat_B   # Matrix addition
add_AB

sub_AB = mat_A - mat_B   # Matrix subtraction
sub_AB

dev_AB = mat_A / mat_B   # Element-wise division
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
