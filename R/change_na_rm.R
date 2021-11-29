#' Removing and/or changing NA values
#' 
#' Function for changing blank or non-NA values in a given data frame into NA 
#' values if not yet changed to NA, then removing the NA values from the data 
#' frame in one function.
#' 
#' This function is beneficial for data frames being used with the 'tidyverse'
#' package, but can also be used in base R.
#' 
#' @param data a data frame containing missing, non-NA, or NA values
#' @param characterName the non-NA or missing value to be replaced by NA
#' if this argument is left blank, the function will only 
#' remove the NA values that are already present in the data frame
#' 
#' @return data frame The new data frame with missing, non-NA, or NA values replaced (if applicable) and removed.
#' 
#' @usage
#' 
#' change_na_rm(ants, "None")
# function test for both changing NA and removing NA arguments

#' change_na_rm(combined)
#' for removing NA values only
 
change_na_rm <- function(data, characterName){
  if (missing(characterName)) {
    output_data <- data %>% 
      drop_na()
    return(output_data)
  }
  else {
    output_data <- data %>% 
      na_if(characterName) %>%
      drop_na()
    return(output_data)
  }
}








  
