
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

setwd("~/Dropbox/spatial_stimuli/data")

setwd("~/GitHub/sf_issue")

# load circles
circles <- st_read("circles.shp")

blocks <- st_read("06_blk14_shp/06_blk14.shp")
blocks <- st_transform(blocks, st_crs(circles))

circles_blocks <- st_intersects(circles, blocks)

