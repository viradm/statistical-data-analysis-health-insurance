install.packages("car")
library(ggplot2)
library(dplyr)
library(car)
library(tidyr)
healthInsurance_data <- read.csv("Health-Insurance-Dataset.csv")

str(healthInsurance_data)
summary(healthInsurance_data) 

# par(mfrow = c(3, 2))
hist(healthInsurance_data$age, main = "age Distribution", xlab = "age", col = blues9)

hist(healthInsurance_data$bmi, main = "bmi Distribution", xlab = "bmi", col = "yellow")

hist(healthInsurance_data$children, main = "children Distribution", xlab = "children", col = "red")

hist(healthInsurance_data$charges, main = "charges Distribution", xlab = "charges", col = "purple")

barplot(table(healthInsurance_data$sex), main = "gender Distribution", xlab = "gender", col = "green")

barplot(table(healthInsurance_data$smoker), main = "smoker Distribution", xlab = "smoker", col = "pink")

#Testing the assumption of independence using correlation coefficients and visualizations
cor_matrix <- cor(healthInsurance_data[, c("age", "bmi", "children", "charges")])
cor_matrix

# Visualizing the correlation matrix using a heatmap
heatmap(cor_matrix, 
        col = colorRampPalette(c("darkblue", "white", "skyblue"))(100),
        margins = c(10, 10),
        main = "Correlation Matrix")

# Create scatterplot matrix 
scatterplotMatrix(healthInsurance_data[, c("age", "bmi", "children", "charges")], col = "skyblue")



# Linear Model Formula
linear_model <- lm(formula = charges ~ age + bmi + children + sex + smoker + 
     region, data = healthInsurance_data)
# Display model summary
summary(linear_model)

healthInsurance_data$charge_split <- ifelse(healthInsurance_data$charges > median(healthInsurance_data$charges), "High", "Low")
# t-test for BMI
t_test_bmi <- t.test(bmi ~ charge_split, data = healthInsurance_data, var.equal = TRUE)
print(t_test_bmi)

# t-test for age
t_test_age <- t.test(age ~ charge_split, data = healthInsurance_data, var.equal = TRUE)
print(t_test_age)

# t-test for children
t.test(children ~ charge_split, data = healthInsurance_data)

#ANOVA Testing 
anova_model <- aov(charges ~ region, data = healthInsurance_data)
summary(anova_model)

#Post-hoc Tests
posthoc <- TukeyHSD(anova_model)
print(posthoc)








