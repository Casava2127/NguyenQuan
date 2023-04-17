# bai1: DichTeHoc
library(readxl)
linelist_cleaned <- read_excel("C:/Users/DELL/Desktop/RUM-W/RUM-JRS/R/DuLieu/epirhandbook/linelist_cleaned.xlsx")
View(linelist_cleaned)


# pacman::p_load(
#   rio,          # File import
#   here,         # File locator
#   skimr,        # get overview of data
#   tidyverse,    # data management + ggplot2 graphics 
#   gtsummary,    # summary statistics and tests
#   rstatix,      # summary statistics and statistical tests
#   janitor,      # adding totals and percents to tables
#   scales,       # easily convert proportions to percents  
#   flextable     # converting tables to pretty images
# )


summary(linelist_cleaned$age)

# duyệt dữ liệu # skimr packge
library(skimr)
skim(linelist_cleaned)
# thong kê tóm tắt
library(base)
summary(linelist_cleaned$age)

# package rstatix để trả về thống kê tóm tắt ở đin dạng data frame
#
library(rstatix)

linelist_cleaned %>%
  get_summary_stats(
    age, wt_kg, ht_cm, ct_blood, temp,  # columns to calculate for
    type = "common")                    # summary stats to return

# package janitor - cung cấp hàm tably() tạo ra bản đơn và chéo
library(janitor)
linelist_cleaned %>% tabyl(age_cat)


# bai8 - lam sach du lieu
library(readxl)
linelist_raw <- read_excel("C:/Users/DELL/Desktop/RUM-W/RUM-JRS/R/DuLieu/epirhandbook/linelist_raw.xlsx")
View(linelist_raw)

# tong quan du lieu 
library(skimr)
skimr::skim(linelist_raw)
names(linelist_raw)
# ten cot - thay doi ten cot
  # lam sach tu dong - clean_names()
attach(linelist_raw) %>%
  library(janitor)
janitor::clean_names(linelist_raw)

names(linelist_raw)






