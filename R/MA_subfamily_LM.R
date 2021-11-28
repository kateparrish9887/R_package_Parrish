ants <- read_csv("/cloud/project/data/FossilAnts.csv")

lm_num_cat <- function(response, num_predictor, cat_predictor, dataframe){
  output_lm_plot <- ggplot(data = dataframe, aes(x = {{num_predictor}}, y = {{response}}, color = subfamily)) +
    geom_point() +
    geom_smooth(method = "lm")
  print(output_lm_plot)
}

