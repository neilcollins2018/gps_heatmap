library(tidyverse)
library(tidyr)
library(png)
library(ggalt)
library(grid)
library(gganimate)


theme_heatmap <- function(){theme(
  axis.title.x=element_blank(),
  axis.text.x=element_blank(),
  axis.text.y=element_blank(),
  axis.title.y=element_blank(),
  axis.ticks.y=element_blank(),
  axis.ticks.x=element_blank(),
  legend.position="none")
}

#######function which works on the gps values. Removing them works best I found
remove_outliers <- function(x, na.rm = TRUE, ...) {
  qnt <- quantile(x, probs=c(.25, .75), na.rm = na.rm, ...)
  H <- 1.5 * IQR(x, na.rm = na.rm)
  y <- x
  y[x < (qnt[1] - H)] <- NA
  y[x > (qnt[2] + H)] <- NA
  y
}

###Stats
df <- readxl::read_xlsx('Heat Map Trial.xlsx')

####Removes any zeros from long/lat data
df2 <- df %>%
  filter(Lat != 0 & Lon != 0) %>%
  filter(complete.cases(.))


pitch <- png::readPNG("PitchOutline.png")

###Animated gif
p <- ggplot(df2) + 
  annotation_custom(rasterGrob(pitch, width = unit(1,"npc"), 
                               height = unit(1,"npc")), -Inf, Inf, -Inf, Inf) +
  geom_point(aes(remove_outliers(Lon), remove_outliers(Lat),
                             color = `Speed m/s`)) + 
  viridis::scale_color_viridis(option = 'inferno') +
  theme_heatmap() +
  transition_time(`Elapsed Time (s)`)

anim <- animate(p, nframes = 1000, fps=2)
anim_save("myanimation.gif", anim)

###density plot/heatmap
ggplot(df2, aes(remove_outliers(Lon), remove_outliers(Lat))) +
  annotation_custom(rasterGrob(pitch, width = unit(1,"npc"), 
                               height = unit(1,"npc")), -Inf, Inf, -Inf, Inf) +
  ggalt::stat_bkde2d(bandwidth = c(.00004, .00004), aes(fill=..level..), geom='polygon',
              alpha = 0.5, colour='black') +
  theme_heatmap()+
  viridis::scale_fill_viridis(option = 'inferno')
