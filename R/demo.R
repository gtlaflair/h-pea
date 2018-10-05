## @knitr loadps

library(ggplot2)
library(readr)
library(dplyr)
library(patchwork)

## @knitr readdata 
int_plot <- read_csv('https://raw.githubusercontent.com/gtlaflair/h-pea/master/data_output/interviews_plotting.csv')

## @knitr knowdata

# show head(), tail(), glimpse(), str(), nrow(), ncol(), names(), View()


## @knitr boxplots

# name the object box
# x = respondent_wall_type, y = rooms
# add jitter, width = .20, alpha = .60


## @knitr scatterplots

# name the plot scatter
# x = no_members, y = number_items
# start with geom_point()
# iteratively add geom_jitter(alpha = 0.5, aes(color = village))

## @knitr barplots

# name the object bar
# use var respondent_wall_type for x, fill, and color; add scale_fill_v & scale_color_v
# add theme(legend.position = 'none')


## @knitr faceting

# facet by village
# x = respondent_wall_type, fill = respondent_wall_type
# add dodge to second plot, proportions to third, use viridis for all

# show proportions
# filter(respondent_wall_type != "cement") %>%
#   count(village, respondent_wall_type) %>%
#   group_by(village) %>%
#   mutate(percent = n / sum(n)) %>%
#   ungroup()

# facet by items

percent_items <- int_plot %>%
  # select variable needed and turn dataframe into long format
  gather(items, items_owned_logical, bicycle:no_listed_items)%>%
  # keep observations in which the items are owned
  filter(items_owned_logical) %>%
  # count the items by village; this creates the n variable
  count(items, village) %>%
  ## add a column with the number of people in each village
  mutate(people_in_village = case_when(village == "Chirodzo" ~ 39,
                                       village == "God" ~ 43,
                                       village == "Ruaca" ~ 49)) %>%
  mutate(percent = n / people_in_village)

# add themes

# show theme_minimal first
# theme_evergreen_s <- theme_minimal() + theme(axis.ticks = element_blank(),
#                                              panel.grid = element_blank())

# theme_set(theme_evergreen_s)
