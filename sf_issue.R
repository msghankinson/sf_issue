
library(sf)
library(mapview)
library(foreign)
library(tidyverse)
library(stargazer)
library(multiwayvcov)
library(lmtest)
library(sandwich)
library(ggplot2)
library(ggmap)
library(wCorr)
library(spatstat)
library(tidycensus)

setwd("~/Documents/GitHub/sf_issue")

circles <- st_read("circles.shp")

blocks <- st_read("blocks_example.shp")

circles_blocks <- st_intersects(circles, blocks)
head(circles_blocks)
length(circles_blocks)
circles_blocks

sessionInfo()
sf::sf_extSoftVersion()


