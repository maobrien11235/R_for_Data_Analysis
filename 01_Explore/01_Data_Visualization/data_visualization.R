# 08JAN2016
# Explore.Data_Visualization
install.packages('tidyverse')
library(tidyverse)
library(ggplot2)

# Let's start with a simple question: 
#   Do larger engines use more gas?

# Our dataset
mpg

# First plot to# see displ(as in, engine size)
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


#=========================================================#
#                                                         #
#                     Facets                              #
#                                                         #
#=========================================================#

# facet_wrap() facets plots by a single var
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy)) +
  facet_wrap(~ class, nrow = 2)

# facet_grid() facets plots with a combination of two vars
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy)) +
  facet_grid(drv ~ cyl)


#=========================================================#
#                                                         #
#                 Geometric Objects                       #
#                                                         #
#=========================================================#

# Scatter Plot
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy))

# Smoothed Linear Plot
ggplot(data = mpg) +
  geom_smooth(mapping = aes(x = displ, y = hwy))

# Changed line aesthetic
ggplot(data = mpg) + 
  geom_smooth(mapping = aes(x = displ, y = hwy, linetype= drv))

# We can also put multiple geoms on a same graph
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy)) + 
  geom_smooth(mapping = aes(x = displ, y =hwy))

# We can simplify the above using the ggplot line
ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) +
  geom_point() +
  geom_smooth()

# We can also use the above and add local flavor to a geom
ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) +
  geom_point(mapping = aes(color = class)) +
  geom_smooth()

ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) +
         geom_point(mapping = aes(color = class)) +
         geom_smooth(data = filter(mpg, class == "subcompact"), se = FALSE)
       

#=========================================================#
#                                                         #
#             Statistical Transformations                 #
#                                                         #
#=========================================================#

ggplot(data = diamonds) +
  geom_bar(mapping = aes(x = cut))

# Note you can use the underlying statistical operation
# for the graphs as well as the ggplot (note the 
# use of stat_count instead of geom_bar)

ggplot(data = diamonds) + 
  stat_count(mapping = aes(x = cut))

#=========================================================#
#                                                         #
#                 Position Adjustments                    #
#                                                         #
#=========================================================#



















