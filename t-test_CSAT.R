## Good SPs generating greater revenue for the platform

setwd("G:/Sheba work/Auto SP Assign")
dummy_dataset <- read.csv("criteria_csat.csv")
dummy_cont <- as.numeric(dummy_dataset$mx_revenue)
dummy_cat <- dummy_dataset$if_good_sp
t.test(dummy_cont~dummy_cat, mu=0, conf=0.95, var.eq=F, paired=F)

# Welch Two Sample t-test
# data:  dummy_cont by dummy_cat
# t = -2.8194, df = 513.68, p-value = 0.004998
# alternative hypothesis: true difference in means is not equal to 0
# 95 percent confidence interval:
#  -8679.334 -1550.761
# sample estimates:
# mean in group 0 mean in group 1 
#         6749.26        11864.31 

## OTA (on-time arrival) impacts quality

setwd("G:/Sheba work/Auto SP Assign")
dummy_dataset <- read.csv("criteria_csat.csv")
dummy_cont <- as.numeric(dummy_dataset$ota_pct)
dummy_cat <- dummy_dataset$if_good_sp
t.test(dummy_cont~dummy_cat, mu=0, conf=0.95, var.eq=F, paired=F)

# Welch Two Sample t-test
# data:  dummy_cont by dummy_cat
# t = -3.3308, df = 554.94, p-value = 0.0009234
# alternative hypothesis: true difference in means is not equal to 0
# 95 percent confidence interval:
#  -0.14745329 -0.03805559
# sample estimates:
# mean in group 0 mean in group 1 
#       0.5814954       0.6742498 

## ITA (in-time acceptance) impacts quality 

setwd("G:/Sheba work/Auto SP Assign")
dummy_dataset <- read.csv("criteria_csat.csv")
dummy_cont <- as.numeric(dummy_dataset$ita_pct)
dummy_cat <- dummy_dataset$if_good_sp
t.test(dummy_cont~dummy_cat, mu=0, conf=0.95, var.eq=F, paired=F)

# Welch Two Sample t-test
# data:  dummy_cont by dummy_cat
# t = -6.4801, df = 517.81, p-value = 2.137e-10
# alternative hypothesis: true difference in means is not equal to 0
# 95 percent confidence interval:
#  -0.1979611 -0.1058541
# sample estimates:
# mean in group 0 mean in group 1 
#       0.5623794       0.7142870 

## Complaints are significantly lower for good quality SPs

setwd("G:/Sheba work/Auto SP Assign")
dummy_dataset <- read.csv("criteria_csat.csv")
dummy_cont <- as.numeric(dummy_dataset$complain_pct)
dummy_cat <- dummy_dataset$if_good_sp
t.test(dummy_cont~dummy_cat, mu=0, conf=0.95, var.eq=F, paired=F)

# Welch Two Sample t-test
# data:  dummy_cont by dummy_cat
# t = 2.8922, df = 376.47, p-value = 0.004047
# alternative hypothesis: true difference in means is not equal to 0
# 95 percent confidence interval:
#  0.008994322 0.047193447
# sample estimates:
# mean in group 0 mean in group 1 
#      0.06422801      0.03613413 

## Cancel does not really impact quality 

setwd("G:/Sheba work/Auto SP Assign")
dummy_dataset <- read.csv("criteria_csat.csv")
dummy_cont <- as.numeric(dummy_dataset$cancel_pct)
dummy_cat <- dummy_dataset$if_good_sp
t.test(dummy_cont~dummy_cat, mu=0, conf=0.95, var.eq=F, paired=F)

# Welch Two Sample t-test
# data:  dummy_cont by dummy_cat
# t = 1.1736, df = 562.69, p-value = 0.241
# alternative hypothesis: true difference in means is not equal to 0
# 95 percent confidence interval:
#  -0.01717529  0.06817084
# sample estimates:
# mean in group 0 mean in group 1 
#       0.4199135       0.3944157 

## Expert app usage impacts quality

setwd("G:/Sheba work/Auto SP Assign")
dummy_dataset <- read.csv("criteria_csat.csv")
dummy_cont <- as.numeric(dummy_dataset$expert_app_usage)
dummy_cat <- dummy_dataset$if_good_sp
t.test(dummy_cont~dummy_cat, mu=0, conf=0.95, var.eq=F, paired=F)

# Welch Two Sample t-test
# data:  dummy_cont by dummy_cat
# t = -5.3843, df = 570.01, p-value = 1.065e-07
# alternative hypothesis: true difference in means is not equal to 0
# 95 percent confidence interval:
#  -0.2229706 -0.1037760
# sample estimates:
# mean in group 0 mean in group 1 
#       0.2121379       0.3755113 
