library(tidyverse)

?fct_infreq

glimpse(attrition)

ggplot(attrition, aes(x =MaritalStatus)) +
  geom_bar() +
  theme_minimal()

levels(attrition$MaritalStatus)

ggplot(attrition, aes(x = fct_infreq(MaritalStatus),
                      fill = fct_infreq(MaritalStatus))) +
  geom_bar() +
  labs(x = "Marital Status") +
  labs(y = "Freq") +
  scale_fill_brewer(palette = "Set1") +
  theme_minimal() +
  theme(legend.position = "none")
