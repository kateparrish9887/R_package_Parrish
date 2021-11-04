ggplot(data = ants, mapping = aes(x = subfamily, y = min_ma)) +
  geom_boxplot(alpha = 0) +
  geom_jitter(alpha = 0.3, color = "pink")
## I just made this to see if my idea was even plot-able! Temporary

