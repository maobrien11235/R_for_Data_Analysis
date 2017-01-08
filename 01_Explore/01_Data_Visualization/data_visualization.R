# 08JAN2016
# Explore.Data_Visualization

library(tidyverse)

# Let's start with a simple question: 
#   Do larger engines use more gas?

# Our dataset
mpg

# First plot to see displ(as in, engine size)
# and hwy(as in, highway miles per gallon)

ggplot(data = mpg) + geom_point(mapping = aes(x = displ, y = hwy))

ggplot(data = mpg)

ggplot(data = mpg) +
  geom_point(mapping = aes(x = cyl, y = hwy))

# Let's see into those higher mpg cars at the right of the graph
ggplot(data = mpg) +
  geom_point(mapping = aes(x=displ, y=hwy, color=class))

# We could also size our datapoints according to class,
# but that can muddy our graph and decrease legibility

ggplot(data = mpg) +
  geom_point(mapping = aes(x=displ, y=hwy, size=class))

# We could also use class as the determinant of opacity, 
# using the alpha aesthetic

# Left
ggplot(data = mpg) +
  geom_point(mapping = aes(x=displ, y=hwy, alpha=class))

# Right
ggplot(data = mpg) +
  geom_point(mapping = aes(x=displ, y=hwy, shape=class))

# Setting aesthetic properties manually
ggplot(data = mpg) +
  geom_point(mapping = aes(x=displ, y=hwy), color='blue')

# Learn more about an in-library dataset by using ?<dataset>
?mpg






