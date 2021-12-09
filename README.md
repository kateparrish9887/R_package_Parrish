# R_package_Parrish
Project for GBIO 408/508

Working with nobody. 

This R package allows users to remove NA values from an entire dataset if the dataset contains non-NA values for missing values, 
or if the values are NA. There are two arguments, the data frame and the non-NA value that needs to be changed to NA. It uses the 
'drop_na' function to drop these NA values.

This package can also visualize a minimum and maximum value column against a categorical column from a dataset into a line range 
plot through ggplot2. It consists of a data argument, an x-axis, y-min and a y-max argument. This can be useful for comparing time 
periods between organisms.

Lastly, this package can be used to plot a numerical response and predictor as a linear model, with an (optional) additional 
categorical predictor distinguished by color. The required arguments are the data frame, a numeric response, and a numeric predictor.
There is an optional argument for an additional categorical predictor that is represented by color.

