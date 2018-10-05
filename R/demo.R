## @knitr loadps

library(ggplot2)
library(readr)
library(dplyr)
library(patchwork)
library(here)
library(papaja)
library(ggalt)
library(ggthemes)
library(knitr)
library(xaringan)
library(RefManageR)

## @knitr readdata 
int_plot <- read_csv('https://raw.githubusercontent.com/gtlaflair/h-pea/master/data_output/interviews_plotting.csv')

## @knitr knowdata

## @knitr barplots

bar <- ggplot(int_plot, aes(x = respondent_wall_type, fill = respondent_wall_type, color = respondent_wall_type)) +
  geom_bar() +
  scale_fill_viridis_d() +
  scale_color_viridis_d() +
  theme(legend.position = 'none')
bar

## @knitr boxplots

## @knitr scatterplots

## @knitr faceting