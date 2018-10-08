# clear all objects
rm(list=ls())

# load relevant packages
library(tidyverse)
library(magrittr)
library(haven)

# load data set
data <- read_dta("SP_dataset.dta")

# question 1


test3 <- count(data, clust_pair, treatment, cluster)
