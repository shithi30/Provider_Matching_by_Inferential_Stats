## Complain impacts CSAT

setwd("G:/Sheba work/Auto SP Assign")
dummy_dataset <- read.csv("criteria_complaints.csv")
dummy_cont <- as.numeric(dummy_dataset$avg_csat)
dummy_cat <- dummy_dataset$if_good_sp
t.test(dummy_cont~dummy_cat, mu=0, conf=0.95, var.eq=F, paired=F)

# Welch Two Sample t-test
# data:  dummy_cont by dummy_cat
# t = -2.3867, df = 15.122, p-value = 0.03049
# alternative hypothesis: true difference in means is not equal to 0
# 95 percent confidence interval:
#  -1.64927690 -0.09375694
# sample estimates:
# mean in group 0 mean in group 1 
#        3.735703        4.607220 

## Revenue givers generate less complaints 

setwd("G:/Sheba work/Auto SP Assign")
dummy_dataset <- read.csv("criteria_complaints.csv")
dummy_cont <- as.numeric(dummy_dataset$mx_revenue)
dummy_cat <- dummy_dataset$if_good_sp
t.test(dummy_cont~dummy_cat, mu=0, conf=0.95, var.eq=F, paired=F)

# Welch Two Sample t-test
# data:  dummy_cont by dummy_cat
# t = -8.6965, df = 322.81, p-value < 2.2e-16
# alternative hypothesis: true difference in means is not equal to 0
# 95 percent confidence interval:
#  -13076.310  -8251.474
# sample estimates:
# mean in group 0 mean in group 1 
#        865.9306      11529.8228

## Percentage of users served is not related to complaints 

setwd("G:/Sheba work/Auto SP Assign")
dummy_dataset <- read.csv("criteria_complaints.csv")
dummy_cont <- as.numeric(dummy_dataset$served_user_pct)
dummy_cat <- dummy_dataset$if_good_sp
t.test(dummy_cont~dummy_cat, mu=0, conf=0.95, var.eq=F, paired=F)

# Welch Two Sample t-test
# data:  dummy_cont by dummy_cat
# t = -1.4319, df = 16.45, p-value = 0.1709
# alternative hypothesis: true difference in means is not equal to 0
# 95 percent confidence interval:
#  -0.18727462  0.03607762
# sample estimates:
# mean in group 0 mean in group 1 
#       0.4823688       0.5579672 

## OTA (on-time arrival) is important for complaints to occur less

setwd("G:/Sheba work/Auto SP Assign")
dummy_dataset <- read.csv("criteria_complaints.csv")
dummy_cont <- as.numeric(dummy_dataset$ota_pct)
dummy_cat <- dummy_dataset$if_good_sp
t.test(dummy_cont~dummy_cat, mu=0, conf=0.95, var.eq=F, paired=F)

# Welch Two Sample t-test
# data:  dummy_cont by dummy_cat
# t = -2.3637, df = 15.649, p-value = 0.03139
# alternative hypothesis: true difference in means is not equal to 0
# 95 percent confidence interval:
#  -0.43310874 -0.02315851
# sample estimates:
# mean in group 0 mean in group 1 
#       0.4152500       0.6433836 

## ITA (in-time acceptance) is necessary for complaints to be generated in lesser numbers 

setwd("G:/Sheba work/Auto SP Assign")
dummy_dataset <- read.csv("criteria_complaints.csv")
dummy_cont <- as.numeric(dummy_dataset$ita_pct)
dummy_cat <- dummy_dataset$if_good_sp
t.test(dummy_cont~dummy_cat, mu=0, conf=0.95, var.eq=F, paired=F)

# Welch Two Sample t-test
# data:  dummy_cont by dummy_cat
# t = -2.9944, df = 15.515, p-value = 0.008811
# alternative hypothesis: true difference in means is not equal to 0
# 95 percent confidence interval:
#  -0.42467641 -0.07208963
# sample estimates:
# mean in group 0 mean in group 1 
#       0.4512375       0.6996205 


## Cancels don't impact complaints 

setwd("G:/Sheba work/Auto SP Assign")
dummy_dataset <- read.csv("criteria_complaints.csv")
dummy_cont <- as.numeric(dummy_dataset$cancel_pct)
dummy_cat <- dummy_dataset$if_good_sp
t.test(dummy_cont~dummy_cat, mu=0, conf=0.95, var.eq=F, paired=F)

# Welch Two Sample t-test
# data:  dummy_cont by dummy_cat
# t = 1.6616, df = 16.193, p-value = 0.1158
# alternative hypothesis: true difference in means is not equal to 0
# 95 percent confidence interval:
#  -0.0259591  0.2150608
# sample estimates:
# mean in group 0 mean in group 1 
#       0.5023188       0.4077679 

## Expert app usage is more in SPs with less complaints 

setwd("G:/Sheba work/Auto SP Assign")
dummy_dataset <- read.csv("criteria_complaints.csv")
dummy_cont <- as.numeric(dummy_dataset$expert_app_usage)
dummy_cat <- dummy_dataset$if_good_sp
t.test(dummy_cont~dummy_cat, mu=0, conf=0.95, var.eq=F, paired=F)

# Welch Two Sample t-test
# data:  dummy_cont by dummy_cat
# t = -2.8969, df = 16.959, p-value = 0.01005
# alternative hypothesis: true difference in means is not equal to 0
# 95 percent confidence interval:
#  -0.36103764 -0.05672333
# sample estimates:
# mean in group 0 mean in group 1 
#       0.1367437       0.3456242 
