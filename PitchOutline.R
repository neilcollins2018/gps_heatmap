library(tidyverse)
library(ggplot2)
########### GAA pitch
###North-South 
gaa_ns <- ggplot()+
  geom_rect(aes(xmin = 0, xmax = 90, ymin = 0, ymax = 145), fill = "#669933", colour = "#FFFFFF", size = 0.5) +
  geom_rect(aes(xmin = 0, xmax = 90, ymin = 0, ymax = 145), fill = NA, colour = "#FFFFFF", size = 0.5) +
  geom_rect(aes(xmin = 0, xmax = 90, ymin = 20, ymax = 145), fill = NA, colour = "#FFFFFF", size = 0.5) +
  geom_rect(aes(xmin = 0, xmax = 90, ymin = 13, ymax = 145), fill = NA, colour = "#FFFFFF", size = 0.5) +
  geom_rect(aes(xmin = 0, xmax = 90, ymin = 65, ymax = 145), fill = NA, colour = "#FFFFFF", size = 0.5) +
  geom_rect(aes(xmin = 0, xmax = 90, ymin = 80, ymax = 145), fill = NA, colour = "#FFFFFF", size = 0.5) +
  geom_rect(aes(xmin = 0, xmax = 90, ymin = 45, ymax = 145), fill = NA, colour = "#FFFFFF", size = 0.5) +
  geom_rect(aes(xmin = 0, xmax = 90, ymin = 100, ymax = 145), fill = NA, colour = "#FFFFFF", size = 0.5) +
  geom_rect(aes(xmin = 0, xmax = 90, ymin = 132, ymax = 145), fill = NA, colour = "#FFFFFF", size = 0.5) +
  geom_rect(aes(xmin = 0, xmax = 90, ymin = 125, ymax = 145), fill = NA, colour = "#FFFFFF", size = 0.5) +
  geom_rect(aes(xmin = 40, xmax = 50, ymin = 72.5, ymax = 72.5), fill = NA, colour = "#FFFFFF", size = 1) +
  geom_rect(aes(xmin = 45, xmax = 45, ymin = 134.0, ymax = 133.95), fill = NA, colour = "#FFFFFF", size = 1) +
  geom_rect(aes(xmin = 45, xmax = 45, ymin = 11.0, ymax = 11.05), fill = NA, colour = "#FFFFFF", size = 1) +
  geom_rect(aes(xmin = 35.5, xmax = 54.5, ymin = 0, ymax = 13), fill = NA, colour = "#FFFFFF", size = 0.5) +
  geom_rect(aes(xmin = 35.5, xmax = 54.5, ymin = 132, ymax = 145), fill = NA, colour = "#FFFFFF", size = 0.5) +
  geom_rect(aes(xmin = 38, xmax = 52, ymin = 0, ymax = 4.5), fill = NA, colour = "#FFFFFF", size = 0.5) +
  geom_rect(aes(xmin = 38, xmax = 52, ymin = 140.5, ymax = 145), fill = NA, colour = "#FFFFFF", size = 0.5) +
  geom_curve(aes(x = 32, y = 20 , xend = 58, yend = 20), data = NULL, curvature = -1.0, colour = "#FFFFFF") +
  geom_curve(aes(x = 32, y = 125 , xend = 58, yend = 125), data = NULL, curvature = 1.0, colour = "#FFFFFF") +
  theme(rect = element_blank(), 
        line = element_blank(),
        text = element_blank()) 

gaa_ns + 
  geom_vline(xintercept = 32, colour = 'blue', linetype = 'dashed') +
  geom_vline(xintercept = 58, colour = 'blue',  linetype = 'dashed') +
  geom_hline(yintercept = 72.5, colour = 'blue',  linetype = 'dashed') +
  geom_hline(yintercept = 36.25, colour = 'blue',  linetype = 'dashed') +
  geom_hline(yintercept = 108.75, colour = 'blue',  linetype = 'dashed')


##East West
gaa_ew <- ggplot()+
  geom_rect(aes(xmin = 0, xmax = 145, ymin = 0, ymax = 90), fill = "#669933", colour = "#FFFFFF", size = 0.5) +
  geom_rect(aes(xmin = 0, xmax = 145, ymin = 0, ymax = 90), fill = NA, colour = "#FFFFFF", size = 0.5) +
  geom_rect(aes(xmin = 20, xmax = 145, ymin = 0, ymax = 90), fill = NA, colour = "#FFFFFF", size = 0.5) +
  geom_rect(aes(xmin = 13, xmax = 145, ymin = 0, ymax = 90), fill = NA, colour = "#FFFFFF", size = 0.5) +
  geom_rect(aes(xmin = 65, xmax = 145, ymin = 0, ymax = 90), fill = NA, colour = "#FFFFFF", size = 0.5) +
  geom_rect(aes(xmin = 80, xmax = 145, ymin = 0, ymax = 90), fill = NA, colour = "#FFFFFF", size = 0.5) +
  geom_rect(aes(xmin = 45, xmax = 145, ymin = 0, ymax = 90), fill = NA, colour = "#FFFFFF", size = 0.5) +
  geom_rect(aes(xmin = 100, xmax = 145, ymin = 0, ymax = 90), fill = NA, colour = "#FFFFFF", size = 0.5) +
  geom_rect(aes(xmin = 132, xmax = 145, ymin = 0, ymax = 90), fill = NA, colour = "#FFFFFF", size = 0.5) +
  geom_rect(aes(xmin = 125, xmax = 145, ymin = 0, ymax = 90), fill = NA, colour = "#FFFFFF", size = 0.5) +
  geom_rect(aes(xmin = 72.5, xmax = 72.5, ymin = 40, ymax = 50), fill = NA, colour = "#FFFFFF", size = 1) +
  geom_rect(aes(xmin = 134, xmax = 133.95, ymin = 45, ymax = 45), fill = NA, colour = "#FFFFFF", size = 1) +
  geom_rect(aes(xmin = 11.0, xmax = 11.05, ymin = 45, ymax = 45), fill = NA, colour = "#FFFFFF", size = 1) +
  geom_rect(aes(xmin = 0, xmax = 13, ymin = 35.5, ymax = 54.5), fill = NA, colour = "#FFFFFF", size = 0.5) +
  geom_rect(aes(xmin = 132, xmax = 145, ymin = 35.5, ymax = 54.5), fill = NA, colour = "#FFFFFF", size = 0.5) +
  geom_rect(aes(xmin = 0, xmax = 4.5, ymin = 38, ymax = 52), fill = NA, colour = "#FFFFFF", size = 0.5) +
  geom_rect(aes(xmin = 140.5, xmax = 145, ymin = 38, ymax = 52), fill = NA, colour = "#FFFFFF", size = 0.5) +
  geom_curve(aes(x = 20, y = 32 , xend = 20, yend = 58), data = NULL, curvature = 1.0, colour = "#FFFFFF") +
  geom_curve(aes(x = 125, y = 32 , xend = 125, yend = 58), data = NULL, curvature = -1.0, colour = "#FFFFFF") +
  theme(rect = element_blank(), 
        line = element_blank(),
        text = element_blank()) 

gaa_ew + 
  geom_hline(yintercept = 32, colour = 'blue', linetype = 'dashed') +
  geom_hline(yintercept = 58, colour = 'blue',  linetype = 'dashed') +
  geom_vline(xintercept = 72.5, colour = 'blue',  linetype = 'dashed') +
  geom_vline(xintercept = 36.25, colour = 'blue',  linetype = 'dashed') +
  geom_vline(xintercept = 108.75, colour = 'blue',  linetype = 'dashed')

#### Rugby Pitch
rugby_ns <- ggplot()+
  geom_rect(aes(xmin = -10, xmax = 80, ymin = -10, ymax = 130), fill = "#669933", colour = "#FFFFFF", size = 0.5) + ###Background Outline
  geom_rect(aes(xmin = 0, xmax = 70, ymin = 0, ymax = 120), fill = "#669933", colour = "#FFFFFF", size = 0.5) +  #Sideline, Endline
  geom_rect(aes(xmin = 0, xmax = 70, ymin = 10, ymax = 110),fill = NA, colour = "#FFFFFF", size = 0.5) + #Trylines
  geom_rect(aes(xmin = 0, xmax = 70, ymin = 15, ymax = 105), fill = NA, colour = "#FFFFFF", size = 0.5, linetype = 2) + #5m Lines
  geom_rect(aes(xmin = 0, xmax = 70, ymin = 32, ymax = 88), fill = NA, colour = "#FFFFFF", size = 0.5) + #22 Line
  geom_rect(aes(xmin = 0, xmax = 70, ymin = 50, ymax = 70), 
            fill = NA, colour = "#FFFFFF", size = 0.5, linetype = 2) + #10m Line
  geom_rect(aes(xmin = 0, xmax = 70, ymin = 0, ymax = 60), 
            fill = NA, colour = "#FFFFFF", size = 0.5)  + #Halfway
  theme(rect = element_blank(), 
        line = element_blank(),
        text = element_blank()) 

rugby_ns +
  geom_hline(yintercept = 30, colour = 'blue', linetype = 'dashed') +
  geom_hline(yintercept = 60, colour = 'blue',  linetype = 'dashed') +
  geom_hline(yintercept = 90, colour = 'blue',  linetype = 'dashed') +
  geom_vline(xintercept = 23.33, colour = 'blue',  linetype = 'dashed') +
  geom_vline(xintercept = 46.66, colour = 'blue',  linetype = 'dashed') 

### Soccer Pitch
soccer_ns <- ggplot()+
  geom_rect(aes(xmin = -10, xmax = 100, ymin = -10, ymax = 130), fill = "#669933", colour = "#FFFFFF", size = 0.5) + ###Background Outline
  geom_rect(aes(xmin = 0, xmax = 90, ymin = 0, ymax = 120), fill = "#669933", colour = "#FFFFFF", size = 0.5) +  #Sideline, Endline
  geom_rect(aes(xmin = 0, xmax = 90, ymin = 0, ymax = 60), 
            fill = NA, colour = "#FFFFFF", size = 0.5)  + #Halfway
  geom_rect(aes(xmin = 24.85, xmax = 65.15, ymin = 0, ymax = 16.5), fill = "#669933", colour = "#FFFFFF", size = 0.5) + #lower 18 yard box
  geom_rect(aes(xmin = 35.85, xmax = 54.15, ymin = 0, ymax = 5.5), fill = "#669933", colour = "#FFFFFF", size = 0.5) + #lower 5 yard box
  geom_rect(aes(xmin = 24.85, xmax = 65.15, ymin = 103.5, ymax = 120), fill = "#669933", colour = "#FFFFFF", size = 0.5) + #upper 18 yard box
  geom_rect(aes(xmin = 35.85, xmax = 54.15, ymin = 114.5, ymax = 120), fill = "#669933", colour = "#FFFFFF", size = 0.5) + #upper 5 yard box
  geom_curve(aes(x = 35.85, y = 16.5 , xend = 54.15, yend = 16.5), curvature = -0.6, colour = "#FFFFFF") + #lower D
  geom_curve(aes(x = 35.85, y = 103.5 , xend = 54.15, yend = 103.5), curvature = .6, colour = "#FFFFFF") + #Upper D
  ggforce::geom_circle(aes(x0=45, y0=60, r=9.15), colour = "#FFFFFF")+ ##Halfway circle
  theme(rect = element_blank(), 
        line = element_blank(),
        text = element_blank()) 


soccer_ns +
  geom_hline(yintercept = 30, colour = 'blue', linetype = 'dashed') +
  geom_hline(yintercept = 60, colour = 'blue',  linetype = 'dashed') +
  geom_hline(yintercept = 90, colour = 'blue',  linetype = 'dashed') +
  geom_vline(xintercept = 30, colour = 'blue',  linetype = 'dashed') +
  geom_vline(xintercept = 60, colour = 'blue',  linetype = 'dashed') 
