getwd()

vehicle_data=read.csv("auto_Info.csv", header = TRUE, sep = ",")
vehicle_data


#Central Tendency
#Measures of location 
#1) Mean (add all values divide by how many values there are)
# ex 6,7,8
#Mean = (6+7+8)/3 = 7
mean(vehicle_data$engine_size)

#2) Median (put numbers in order to pick the middle number)
median(vehicle_data$engine_size)

#3) Mode(Most repeated value)
#find the mode
mode_function <- function(x){
  ux <- unique(x)
  ux[which.max(tabulate(match(x,ux)))]
}

mode_function(vehicle_data$engine_size)


#2 Calculate mean and Standard deviation 
#mean

mean_engineSize <- mean(vehicle_data$engine_size)
mean_engineSize

#SD

sd_engineSize <- sd(vehicle_data$engine_size)
sd_engineSize 

# 3) create a sequence of X values
x_values <- seq(min(vehicle_data$engine_size), max(vehicle_data$engine_size), lenght = 10)

# calculate the normal distribution Y values using dnorm()
y_values <- dnorm(x_values, mean = mean_engineSize, sd = sd_engineSize )

# 4) plot
plot(x_values, y_values, type = "l", col = "blue", lwd = 2,
     main = "Bell curve of vehicle engine size",
     xlab = "Marks", ylab = "Density")
