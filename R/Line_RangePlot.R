#' Function for plotting a line range function using the 'ggplot2' package.
#' 
#' This function includes an x-axis label rotation at -45 degrees for easy axis
#' reading.
#' 
#' @param data a data frame
#' @param x_axis the column in the data frame to be plotted on the x-axis of the graph
#' @param y-min the column in the data frame to be plotted with the y-max data
#' @param y-max the column in the data frame to be plotted with the y-min data
#' 
#' @return plot The line range plot of the selected data
#' 
#' @usage
#' 
#' Line range plot using the 'change_na_rm' function to remove NA values with additional y-axis labeling 
#' ants %>% 
#'  change_na_rm("None") %>% 
#'  line_range_plot(Tribe, min_ma, max_ma) +
#'  labs(y = "Age (in Ma)")

line_range_plot <- function(data, x_axis, y_min, y_max) {
  output_plot <- ggplot(data = data, aes(x = {{x_axis}}, ymin = {{y_min}}, ymax = {{y_max}})) +
    geom_linerange(size = 1) +
    theme(axis.text.x = element_text(angle = -45, vjust = 2, hjust = 0))
  print(output_plot)
}









