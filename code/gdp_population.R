library(tidyverse)
gapminder_1997 <- read_csv("gapminder_1997.csv")

name <- "Ben"
name
age <- 26
age
name <- "Harry Potter"
name

read_csv() # this reads in a file
?read_csv

Sys.Date() # outputs the current date
getwd() # outputs our current working directory (folder)

sum(5, 6)
?round

# let's start plotting!
gapminder_1997 <- read_csv(file = "data/gapminder_1997.csv") # read in data

ggplot(data = gapminder_1997) +
  aes(x = gdpPercap) +
  labs(x = "GDP Per Capita") +
  aes(y = lifeExp) +
  labs(y = "Life Expectancy") +
  geom_point() +
  labs(title = "Do people in wealthy countries live longer?") +
  aes(color = continent)

View(gapminder_1997)

gapminder_data <- read_csv("data/gapminder_data.csv")
dim(gapminder_data)
head(gapminder_data)

ggplot(data = gapminder_data) +
  aes(x=year, y=lifeExp, group = country, color = continent) +
  geom_line() # line plot!

ggplot(data = gapminder_1997) +
  aes(x = continent, y = lifeExp) +
  geom_boxplot()
  
ggplot(data = gapminder_1997) +
  aes(x = continent, y = lifeExp) +
  geom_violin() +
  geom_point()

# Exercise: How would we "jitter" the points to make the plot easier to read?
ggplot(data = gapminder_1997) +
  aes(x = continent, y = lifeExp) +
  geom_violin() +
  geom_jitter()

# playing with color
ggplot(data = gapminder_1997) +
  aes(x = continent, y = lifeExp) +
  geom_violin(aes(fill=continent)) # mapped continent to my fill aesthetic

ggsave("figures/colorful_violin.pdf", width=6, height=4)

ggplot(data=gapminder_1997) +
  aes(x = gdpPercap, y = lifeExp) +
  geom_point() +
  facet_grid(rows = vars(continent))

ggsave("figures/awesome_plot.pdf", width=6, height=4)

  
