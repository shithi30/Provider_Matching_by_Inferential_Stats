## Cancel does not significantly impact quality

setwd("G:/Sheba work/Auto SP Assign")
dummy_dataset <- read.csv("criteria_csat.csv")
dummy_var <- dummy_dataset$cancel_pct_cat
dummy_target <- dummy_dataset$if_good_sp
dummy_tab <- table(dummy_var, dummy_target)
barplot(dummy_tab, beside=T, legend=T)
chisq.test(dummy_tab, correct=T)

# Pearson's Chi-squared test with Yates' continuity correction
# data:  dummy_tab
# X-squared = 1.4619, df = 1, p-value = 0.2266

## Served_user_pct impacting quality

setwd("G:/Sheba work/Auto SP Assign")
dummy_dataset <- read.csv("criteria_csat.csv")
dummy_var <- dummy_dataset$served_user_pct_cat
dummy_target <- dummy_dataset$if_good_sp
dummy_tab <- table(dummy_var, dummy_target)
barplot(dummy_tab, beside=T, legend=T)
chisq.test(dummy_tab, correct=T)

# Pearson's Chi-squared test with Yates' continuity correction
# data:  dummy_tab
# X-squared = 4.0043, df = 1, p-value = 0.04539


