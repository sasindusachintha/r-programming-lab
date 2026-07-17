#get working directory
getwd()

#import dataset
vehicle_data=read.csv("auto_Info.csv", header = TRUE, sep = ",")
vehicle_data

# Variables for analysis
variables <- c("engine_size", "horsepower", "curb_weight", "price")

#Mean
mean(vehicle_data$engine_size)
mean(vehicle_data$horsepower)
mean(vehicle_data$curb_weight)
mean(vehicle_data$price)

#Median
median(vehicle_data$engine_size)
median(vehicle_data$horsepower)
median(vehicle_data$curb_weight)
median(vehicle_data$price)

#Mode Function
get_mode <- function(x){
  
  unique_values <- unique(x)
  frequency <- tabulate(match(x, unique_values))
  
  unique_values[which.max(frequency)]
}

get_mode(vehicle_data$engine_size)

get_mode(vehicle_data$horsepower)

get_mode(vehicle_data$curb_weight)

get_mode(vehicle_data$price)


# Central Tendency Table
central_tendency <- data.frame(
  
  Variable = c(
    "Engine Size",
    "Horsepower",
    "Curb Weight",
    "Price"
  ),
  
  Mean = c(
    mean(vehicle_data$engine_size),
    mean(vehicle_data$horsepower),
    mean(vehicle_data$curb_weight),
    mean(vehicle_data$price)
  ),
  
  Median = c(
    median(vehicle_data$engine_size),
    median(vehicle_data$horsepower),
    median(vehicle_data$curb_weight),
    median(vehicle_data$price)
  ),
  
  Mode = c(
    get_mode(vehicle_data$engine_size),
    get_mode(vehicle_data$horsepower),
    get_mode(vehicle_data$curb_weight),
    get_mode(vehicle_data$price)
  )
  
)

central_tendency

#Bell Curve Graphs
install.packages("ggplot2")

library(ggplot2)

# Engine Size Bell Curve
ggplot(vehicle_data, aes(x=engine_size))+
  geom_density(fill="blue", alpha=0.5)+
  geom_vline(
    aes(xintercept=mean(engine_size)),
    color="red",
    size=1
  )+
  geom_vline(
    aes(xintercept=median(engine_size)),
    color="green",
    size=1
  )+
  labs(
    title="Engine Size Distribution",
    x="Engine Size",
    y="Density"
  )

# Horsepower Bell Curve
ggplot(vehicle_data, aes(x=horsepower))+
  geom_density(fill="orange", alpha=0.5)+
  geom_vline(
    aes(xintercept=mean(horsepower)),
    color="red"
  )+
  geom_vline(
    aes(xintercept=median(horsepower)),
    color="green"
  )+
  labs(title="Horsepower Distribution")


# Curb Weight Bell Curve
ggplot(vehicle_data, aes(x=curb_weight))+
  geom_density(fill="purple", alpha=0.5)+
  geom_vline(
    aes(xintercept=mean(curb_weight)),
    color="red"
  )+
  geom_vline(
    aes(xintercept=median(curb_weight)),
    color="green"
  )+
  labs(title="Curb Weight Distribution")

# Price Bell Curve
ggplot(vehicle_data, aes(x=price))+
  geom_density(fill="darkgreen", alpha=0.5)+
  geom_vline(
    aes(xintercept=mean(price)),
    color="red"
  )+
  geom_vline(
    aes(xintercept=median(price)),
    color="green"
  )+
  labs(title="Vehicle Price Distribution")


