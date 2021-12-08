#' Linear model plot function with 'ggplot2'
#' Function for plotting a linear regression model using the 'ggplot2' package.
#' This function includes a colored trend line.
#' @param data A data frame.
#' @param response A column in the data frame to be used as a response variable.
#' @param num_predictor A column in the data frame containing numerical values 
#' to be used as the predictor variable.
#' @param cat_predictor A column in the data frame containing categorical values 
#' to be used as an additional predictor variable distinguished by color;
#' If left blank, the linear regression plot will be returned with only one 
#' predictor value.
#' @return A linear regression plot with a colored trend line.
#' @usage 
#'   lm_num_cat(ants, min_ma, max_ma, subfamily)
#' @examples 
#'   ants %>% 
#'    change_na_rm("None") %>% 
#'    lm_num_cat(min_ma, max_ma)
#'   ants %>%
#'    change_na_rm("None") %>%
#'    lm_num_cat(min_ma, max_ma, Genus) +
#'    annotate("text", x = 42, y = 27, 
#'    label = "R^2 == 0.987", parse = TRUE, size = 4)
#'@export
lm_num_cat <- function(data, response, num_predictor, cat_predictor){
  if (missing(cat_predictor)) {
    output_lm_plot <- ggplot(data, aes(x = {{num_predictor}}, y = {{response}})) + 
      geom_point(size = 1) +
      stat_smooth(method = glm, color = "red", size = 0.5)
    print(output_lm_plot)
  }
  else {
    output_lm_plot <- ggplot(data, aes(x = {{num_predictor}}, y = {{response}}, 
      color = {{cat_predictor}})) + 
      geom_point(size = 1) +
      stat_smooth(method = glm, color = "black", size = 0.5)
    print(output_lm_plot)
  }
}