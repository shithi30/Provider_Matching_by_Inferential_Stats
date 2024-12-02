## Auto SP (Service Provider) Matching Algorithm
**by Shithi Maitra, Jr. Data Scientist**

<img width="470" alt="ee4" src="https://github.com/shithi30/Provider_Matching_by_Inferential_Stats/assets/43873081/b219fa45-8d73-45b7-bf65-926f2165d0c0">

<br>The algo. inputs a service, an order and outputs the right SPs to serve the order. It displays a list of SPs in descending order of eligibility scores. If unable to assign a score, the algo. shows the unscored SPs randomly. The algorithm assigns a score against each SP on the basis of 9 criteria:

- <strong>MX Revenue:</strong> Defined by comparison with the highest revenue from the service
- <strong>OTA:</strong> Defined as a ratio of timely served orders to all served orders
- <strong>CSAT (Customer Satisfaction):</strong> The average of customers' CSATs within 5.00
- <strong>Complain Ratio:</strong> Defined as a ratio of placed complaints to placed orders
- <strong>Expert App Usage:</strong> Ratio of orders served using expert app to all served orders
- <strong>ITA:</strong> Defined as a ratio of acceptance within 30 minutes over all created orders
- <strong>Package Score:</strong> Package an SP has paid Sheba Platform for 
- <strong>Served Users' Ratio:</strong> Ratio of served users over all users who placed orders
- <strong>Cancel Ratio:</strong> Defined as a ratio of canceled orders over all concluded orders

*<strong>Note:</strong> Analyses partially revealed due to data governance policy*

### Dataset
We resonate customers' voice while selecting SPs. Customers' opinions are reflected in 2 params: CSAT and complaints. Hence we perform a dual analysis on all SPs by dividing them into 2 classes: eligible and ineligible, based on separate thresholds (4.6 for CSAT, 0.2 for complaints). 
<br><br>
<img width="750" alt="ee4" src="https://github.com/shithi30/Provider_Matching_by_Inferential_Stats/assets/43873081/949b2ca4-a618-44b5-a034-0717ec199593">
<br>
<img width="900" alt="ee4" src="https://github.com/shithi30/Provider_Matching_by_Inferential_Stats/assets/43873081/2a2597ef-2c08-4ad0-b15d-95ed93ffc021">
<br><br>
Efficacy of Recommendation Features (CSAT-centric): http://mb.sheba.xyz/question/15112
<br>
Efficacy of Recommendation Features (Complaints-centric): http://mb.sheba.xyz/question/15147

### Inferential Stats: Weighing Factors
After having the data divided with samples on both sides, we examine the impact of each feature on the SPs’ being eligibiliy for serving the order. We examine them by performing t-tests on continuous features and Chi-squared independence tests on categorical features. 
<br><br>
<img width="255" alt="ee4" src="https://github.com/shithi30/Provider_Matching_by_Inferential_Stats/assets/43873081/084ee1fd-8a4d-4d1a-916d-8b7f2eda4613">
<img width="250" alt="ee4" src="https://github.com/shithi30/Provider_Matching_by_Inferential_Stats/assets/43873081/789584c0-8580-4faa-8934-86cb356ac05b">
<img width="508" alt="ee4" src="https://github.com/shithi30/Provider_Matching_by_Inferential_Stats/assets/43873081/a5b03c88-141d-4e47-8abf-d9674a5037c3">

### Correlations: Confirming Factors
We examine the p-values and assign the greatest weightage to the feature with the least p-value. Thus we get 2 sets of weightage for CSAT/complain-centric analysis. We confirm the authenticity of the weight-sets by finding a positive Spearman's correlation between them. 
<br><br>
<img width="470" alt="ee4" src="https://github.com/shithi30/Provider_Matching_by_Inferential_Stats/assets/43873081/572a1ea5-e7d3-4ca6-8602-8429d37d02a0">
<br><br>
We then harmonize the two sets using their harmonic mean. We simplify the weights by adjusting them to sum up to 100. We observe the correlation between the harmomic weights and the adjusted weights. Finding above 95% of Spearman's correlation validates the operation.

### Algorithm in Action
After the SPs have been ranked, we resolve any ties by the number of orders scheduled on the day and further by the number of dependent resources (so as to not overload an SP). The algorithm has a recency component implemented by considering data of the last 30 days.
<br><br>
<img width="500" alt="ee4" src="https://github.com/shithi30/Provider_Matching_by_Inferential_Stats/assets/43873081/90e155c5-eb31-40c8-a733-91368c7bd9ea">


