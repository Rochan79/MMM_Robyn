library(Robyn)
library(car)
data("dt_simulated_weekly")
dt = as.matrix(dt_simulated_weekly[c("revenue", "tv_S", "ooh_S","print_S",'facebook_I','search_clicks_P', 'search_S', 'competitor_sales_B', 'facebook_S', 'newsletter')])
heatmap(dt, col = cm.colors(256))
cor_matrix <- cor(dt)
# Create correlation heatmap
corrplot(cor_matrix, method = "color")

a <- lm(revenue ~ tv_S+ ooh_S+print_S+facebook_I+search_clicks_P+ competitor_sales_B+  newsletter, data = dt_simulated_weekly)
vif(a)