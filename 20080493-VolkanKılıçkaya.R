# -------------------------------------------------------------------------- ###
# Question 1a ---- https://github.com/VolkanKilickaya/resitexam.git
# -------------------------------------------------------------------------- ###


# -------------------------------------------------------------------------- ###
# Question 2a ----
library(dplyr)
Titanic %>%
  group_by(sex) %>%
  summarise(avg_fare = mean(fare))
# -------------------------------------------------------------------------- ###


# -------------------------------------------------------------------------- ###
# Question 2b ----
library(ggplot2)
ggplot(data = titanic, aes(x = sex, y = age)) +
  geom_boxplot(na.rm = TRUE)
# -------------------------------------------------------------------------- ###


# -------------------------------------------------------------------------- ###
# Question 2c ----titanic %>%
ggplot(aes(x = age)) +
  geom_histogram(aes(y = ..density..),
                 colour = "black",
                 fill = "white") +
  geom_density(alpha = 0.5,
               fill = "#FF0000")
# -------------------------------------------------------------------------- ###


# -------------------------------------------------------------------------- ###
# Question 3a ----
#If we define the vector x in R as x <- 10:20, running the code x[seq(1, 5, by = 3)] will result in a subset of the vector x containing elements at positions 1, 4, and 7.

#Here's the step-by-step breakdown:

#The seq(1, 5, by = 3) function generates a sequence from 1 to 5 with a step of 3. The resulting sequence is: 1, 4.

#The subset operation x[seq(1, 5, by = 3)] selects elements from vector x based on the positions specified in the sequence.

#In this case, the resulting subset will include elements at positions 1, 4, and 7 of vector x.

#Therefore, the result of running x[seq(1, 5, by = 3)] will be a vector containing the values 10, 13, and 16.

# -------------------------------------------------------------------------- ###


# -------------------------------------------------------------------------- ###
# Question 3b ----
library(dplyr)
dt3 <- merge(dt1, dt2, all = TRUE)
# -------------------------------------------------------------------------- ###


# -------------------------------------------------------------------------- ###
# Question 3c ----
ggplot(data, aes(x=my_x, y=my_y)) +
  geom_point() +
  geom_smooth(method=lm , color="blue", se=TRUE)
# -------------------------------------------------------------------------- ###


# -------------------------------------------------------------------------- ###
# Question 3d ----
  mylist <- list(1:3, c(3:5, NA))
  myresult <- map(mylist, ~ mean(.x, na.rm = TRUE)) %>% unlist()

# -------------------------------------------------------------------------- ###


# -------------------------------------------------------------------------- ###
# Question 3e ----
# -------------------------------------------------------------------------- ###


# -------------------------------------------------------------------------- ###
# Question 3f ----
  backgammon_roll <- function() {
    # Simulate rolling two dice
    dice1 <- sample(1:6, 1, replace = TRUE)
    dice2 <- sample(1:6, 1, replace = TRUE)
    cat("Dice 1:", dice1, "\n")
    cat("Dice 2:", dice2, "\n")
    return(dice1 + dice2)
  }
  result <- backgammon_roll()
  backgammon_roll <- function() {
    dice1 <- sample(1:6, 1, replace = TRUE)
    dice2 <- sample(1:6, 1, replace = TRUE)
    cat("Dice 1:", dice1, "\n")
    cat("Dice 2:", dice2, "\n")
    return(dice1 + dice2)
  }
# -------------------------------------------------------------------------- ###


# -------------------------------------------------------------------------- ###
# Question 3g ----
t.test(age ~ survived, data = titanic, var.equal = TRUE)
# -------------------------------------------------------------------------- ###


# -------------------------------------------------------------------------- ###
# Question 4a ----
library(dplyr)
  dat2 <- dat %>%
    group_by(country) %>%
    filter(dat, country="Germany")%<%
    mutate(gdp_pc = gdp / population)
# -------------------------------------------------------------------------- ###


# -------------------------------------------------------------------------- ###
# Question 5a ----
library(tidyr)
dat2 <- dat %>%
  pivot_longer(cols = -country, names_to = "year", values_to = "gdp") %>%
  mutate(year = as.character(year))
# -------------------------------------------------------------------------- ###
