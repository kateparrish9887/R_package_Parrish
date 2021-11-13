anova <- function(input = y, x, dataframe) {
  output_model_fit <- (lm(y ~ x, dataframe))
  return(summary(output_model_fit))
}


