#!/usr/bin/env python
# coding: utf-8

# import
import pandas as pd
from scipy.stats import spearmanr

# read 
df = pd.read_csv("harmonize_weights.csv") 
    
# correlation between weights
data1 = list(df["complaint_weightage"])
data2 = list(df["csat_weightage"])
corr, _ = spearmanr(list(data1), list(data2))
print("Spearman r :", corr)
print()

# harmoninc means of weights
print("Harmonic means:")
for i in range (0, 9):
    if(data1[i] == 0 or data2[i] == 0): hm = 0
    else: hm = 2/((1/data1[i])+(1/data2[i])) 
    print(hm)
print()
    
# adjusted weights vs. harmonic weights
data1 = list(df["harmonic_weightage"])
data2 = list(df["harmonic_wt_refined"])
corr, _ = spearmanr(list(data1), list(data2))
print("Correlation between adjusted and harmonic means: ", corr)
