change_no_na <- function(input = dataframe, characterName) {
  output_dataframe <- (dataframe %>% 
                        na_if("characterName") %>% 
                        drop_na())
  return(output_dataframe)
}



  
