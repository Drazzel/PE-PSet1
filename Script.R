# clear all objects
rm(list=ls())

# load relevant packages
library(tidyverse)
library(magrittr)
library(haven)

# load data set
data <- read_dta("SP_dataset.dta")

# subset data by variable value
test <- subset(data, cluster==1)
test$clust_pair

# count number of observations in the cluster variable
length(which(data$cluster==1))

# count number of observations
length(test$clust_pair)

test2 <- subset(data, clust_pair==47)
test2$cluster
length(test2$cluster)

