line_plot <- funtion(input = dataframe, x, y) {
  output_line_plot <- (ggplot(dataframe, aes(x, y)) + geom_line())
  return(output_line_plot)
}


