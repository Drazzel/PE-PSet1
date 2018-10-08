# clear all objects
rm(list=ls())

# load relevant packages
library(tidyverse)
library(magrittr)
# for reading stata datasets
library(haven)
# for calculating modes
library(modes)
# for summarizing variable names
library(Hmisc)

# load data set
data <- read_dta("SP_dataset.dta")

# QUESTION 1
# Inspect the data. Are there truly 100 clusters in 50 pairs? 
# Does each pair have a treatment and a control cluster?
test <- count(data, clust_pair, treatment, cluster)

# PARTIAL ANSWER
# Yes. Sorting the data by clustered pairs, provides 50 unique possible entries
# indicating that there are indeed only 50 pairs. Subsetting that same data by clusters
# returns 100 results indicating that there are 100 clusters among the 50 pairs. 
# Further subsetting along treatment shows that for each clustered pair, one cluster
# is a treatment and one is a control.

# QUESTION 1 - CONTINUED
# What is the modal level of schooling in the sample? The modal marital status?
modes(data$edu_info_051)
modes(data$marstat)

# The modal level of schooling is
# The modal marital status is to 2 or to be "currently married."

