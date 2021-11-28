ants <- read_csv("/cloud/project/data/FossilAnts.csv")

line_range_plot <- function(dataframe, x_axis, y_min, y_max) {
  output_plot <- ggplot(data = dataframe, aes(x = {{x_axis}}, ymin = {{y_min}}, ymax = {{y_max}})) +
    geom_linerange()
  print(output_plot)
}






