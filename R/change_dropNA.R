ants <- read_csv("/cloud/project/data/FossilAnts.csv")

change_no_na <- function(dataframe, characterName){
  if (missing(characterName)) {
    output_data <- dataframe %>% 
      drop_na()
    return(output_data)
  }
  else {
    output_data <- dataframe %>% 
      na_if(characterName) %>%
      drop_na()
    return(output_data)
  }
}






  
