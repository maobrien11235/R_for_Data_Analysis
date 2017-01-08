#############################################
#                                           #
# Introductory Script                       #
#                                           #
# Purpose: Introductory chapter and begin-  #
# -ning notes. May not contain actual code. #
#                                           #
#############################################



# Model Flow:
# Import->Tidy->Transform->Visualize->Model->Communicate
#               ^                    ^
#               |                    |
#               ----------------------
#
# Import == Pulling data into R
# Tidy == Put data in a consistent form for modeling
# Transform == Narrowing dataset to obs of interest
# Visualiztion == turn data into graphs to understand 
#                 the dataset
# Modeling == quantitative method, system, or approach
#             that applies statistical, economic, financial,
#             or mathematical theories, techniques, and assumptions
#             to process input data into estimates
# Communication == convey results to audience
#
# Look into data.table if I start to use datasets that 
# are between 10 and 100 GB. Larger than that, it may be
# better to reformulate my problem.

install.packages('tidyverse')
