#' Removing and/or changing NA values
#' 
#' Function for changing blank or non-NA values in a given data frame into NA 
#' values if not yet changed to NA, then removing the NA values from the data 
#' frame in one function.
#' 
#' This function is beneficial for data frames being used with the 'tidyverse'
#' package, but can also be used in base R for missing values.
#' 
#' @param data A data frame containing missing, non-NA, or NA values.
#' @param characterName The non-NA or missing value to be replaced by NA.
#' if this argument is left blank, the function will only remove the NA values 
#' that are already present in the data frame.
#' 
#' @return The new data frame with missing, non-NA, or NA values 
#' replaced (if applicable) and removed.
#' 
#' @usage
#'
#' change_na_rm(ants, "None")
#' 
#' @examples
#' Only using the remove NA argument:
#' 
#'   change_na_rm(combined)
#' 
#' 
#' Manipulating and filtering a data frame by removing a non-NA value:
#' 
#'   change_na_rm(butterfly, "Plebejus icarioides")
 
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








  
