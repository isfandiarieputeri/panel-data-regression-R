# panel-data-regression-R
Poverty Gap Index-P1 is a tool to measure how far the average per capita expenditure of the poor is relative to the poverty line. By knowing the depth of poverty, the local government will be assisted in making budget allocation policies more efficiently because the depth of poverty affects how much government effort is needed to lift someone out of poverty. In this project, it is examined what factors affect the District/City Poverty Depth Index in Central Java Province in 2017-2020 using panel data analysis. This analysis produces a mathematical model of panel data that can be used to predict the Poverty Depth Index of a Regency/City in Central Java in a certain period. Based on the mathematical model of the panel data, it is known that the factors that significantly affect the Regency/City Poverty Index in Central Java in 2017-2020 are the Open Unemployment Rate (TPT), Per Capita Expenditure (PPK), and Regency/City Minimum Wage (UMK). To reduce the Poverty Depth Index, the government should try to reduce the TPT and increase the KDP and UMK.

The problem formulation of this project is as follows: 
a. What are the factors that significantly affect the Poverty Gap Index-P1 Districts/Cities in Central Java Province in 2017-2020? 
b. What is the mathematical model that can estimate the Poverty Gap Index-P1 District/City in Central Java Province based on the factors that significantly influence it?

Viewed from the purpose of data analysis, panel data is useful for seeing the economic impact that is inseparable between each individual in several periods, and this cannot be obtained from using cross-section data or time-series data separately. The existence of differences in the characteristics of the dependent variable from each entity or the influence of other variables outside the model that you want to observe the effect of using panel data regression will be effective because linear regression cannot do it.

![image](https://user-images.githubusercontent.com/114327773/192703395-155b0f47-022e-414c-9e70-9d87b595e63e.png)

In general, the steps for testing the hypothesis are as follows. First, perform the Hausmann test on the panel data. If the initial hypothesis for the Hausmann test is rejected, the fixed effects model will be used in the modeling. Next, the Breusch-Pagan test was carried out to see if there was a time or cross-time effect in the data. If the initial hypothesis of the Breusch-Pagan test is not rejected, perform the analysis using the panel/pooling regression model.

Diagnostic checking is carried out after knowing the model specifications for each panel data model that is formed where the panel data model has significantly affected the dependent variable. Diagnostic checking on panel data consists of Serial Correlation Test and Heteroscedasticity.

After passing the diagnostic test, significant panel data regression models will be obtained for the data, so it is necessary to select the best model. The parameters used are as follows:
a. Coefficient of Determination (R-Square)
A model is said to be good if it has a large R-square (close to 1). It can also be said that the greater the value of R square, the better the regression model will be.

b. Sum of square error (SSE)
A model is said to be good if it has a small SSE. It can also be said that the smaller the SSE, the better the regression model will be.

c. Adjusted R2
A model is said to be good if it has a large adjusted R2. It can also be said that the greater the adjusted R2, the better the regression model.
