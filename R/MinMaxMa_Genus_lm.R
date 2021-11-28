lm_num_cat <- function(dataframe, response, num_predictor, cat_predictor, r_squared){
    output_lm_plot <- ggplot(dataframe, aes(x = {{num_predictor}}, y = {{response}}, color = {{cat_predictor}})) + 
      geom_point(size = 2) +
      stat_smooth(method = glm, color = "black", size = 0.5)
    print(output_lm_plot)
}
