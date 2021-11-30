#' Line range plot function with 'ggplot2'
#' 
#' Function for plotting a line range function using the 'ggplot2' package.
#' 
#' This function includes an x-axis label rotation at -45 degrees for easy 
#' x-axis reading.
#' 
#' @param data A data frame.
#' @param x_axis The column in the data frame to be plotted on the x-axis 
#' of the graph.
#' @param y-min The column in the data frame to be plotted with the y-max data.
#' @param y-max The column in the data frame to be plotted with the y-min data.
#' 
#' @return The line range plot of the selected data.
#' 
#' @usage
#' 
#'   line_range_plot(butterfly, ButterflySpecies, SpringTemp, SummerTemp)
#'  
#' @examples
#' Line range plot (using the 'change_na_rm' function in this package to remove 
#' NA values) with additional y-axis title labeling:
#' 
#'   ants %>% 
#'    change_na_rm("None") %>% 
#'    line_range_plot(Tribe, min_ma, max_ma) +
#'    labs(y = "Age (in Ma)")
#'
#'  
#' Line range plot using additional axis title labeling, line size and color 
#' distinction:
#' 
#'   butterfly %>% 
#'    line_range_plot(ButterflySpecies, SpringTemp, SummerTemp) + 
#'    geom_linerange(size = 1) +
#'    aes(color = Day) +
#'    labs(x = "Butterfly Species", 
#'         y = "Spring and Summer Temperature Range") 

line_range_plot <- function(data, x_axis, y_min, y_max) {
  output_plot <- ggplot(data = data, aes(x = {{x_axis}}, ymin = {{y_min}}, 
    ymax = {{y_max}})) +
    geom_linerange() +
    theme(axis.text.x = element_text(angle = -45, vjust = 2, hjust = 0))
  print(output_plot)
}









