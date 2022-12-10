# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG

![linear_regression](https://github.com/vanessaneang/MechaCar_Statistical_Analysis/blob/main/Resources/linear_regression_table.png)

**Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?

The variables vehicle_weight, and ground_clearance provided the most non-random amount of variance to mpg values in the dataset, which can be
see by the R-squared value of 0.7149 and th p-value being significantly small, less than 0.001. Indicating the the model is fairly predictive of the mpg of 
the MechaCar prototypes. 

**Is the slope of the linear model considered to be zero? Why or why not?

Yes, the slope can be considered zero, since the value is so close to zero and the p-value being less than 0.001 we fail to reject the null hypothesis. This 
means that vehicle_weight and ground_clearance can help predict the mpg of the MechaCars. 

**Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?

This linear model does predict the mpg of MechaCar prototypes effectively because of the R-squared variance being 0.7149 indicating it is a realisitic model 
with low random amounts of variance.  

## Summary Statistics on Suspension Coils

**The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. 
Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

By looking at the summary statistics table, if all lots are accounted for all together it looks as if the variance of the suspension coils does not exceed
100 PSI, the value being 62.29. However, if each lot is accounted for separately the Manufacturing Lot 3 exceeds this limitation by over 70 PSI, with the
variance being 170.28 PSI. If the mean PSI is 1500, then Lot 3 can vary by a larger degree, making the spread of data for lot 3 more variable than the other
two lots. This could be a problem since the design specification requirementsneed the suspension coils to not vary more than 100 PSI.

![total_summary](https://github.com/vanessaneang/MechaCar_Statistical_Analysis/blob/main/Resources/total_summary.png)

![lot_summary](https://github.com/vanessaneang/MechaCar_Statistical_Analysis/blob/main/Resources/lot_summary.png)

 
## T-Tests on Suspension Coils

![all_t.test](https://github.com/vanessaneang/MechaCar_Statistical_Analysis/blob/main/Resources/all_lot_t_test.png)

If we wanted to compare all manufacturing lots PSI with the population mean of 1500 PSI we can see through a one sample t-test that p-value is less than 
0.05 so we fail to reject the null hypothesis and indeed that all the manufacturing lots do have the same mean as the population mean of 1500. Which we can
see that the confidence interval is 95% as well indicating that we are highly confident that the two means are the same.

![lot1_t.test](https://github.com/vanessaneang/MechaCar_Statistical_Analysis/blob/main/Resources/lot_1_t_test.png)

If we were to breakdown the average PSI of each specific manufacturing lot we can see with Lot 1, the two-sample t-test gives us a p-value that significantly
less than 0.05 meaning the the mean also equals the population PSI mean of 1500.

![lot2_t.test](https://github.com/vanessaneang/MechaCar_Statistical_Analysis/blob/main/Resources/lot_2_t_test.png)

The t-test for Manufacturing Lot 2 the p-values is the same as the previous lot so it also means the mean equals 1500.
![lot3_t.test](https://github.com/vanessaneang/MechaCar_Statistical_Analysis/blob/main/Resources/lot_3_t_test.png)

Even Lot 3 has a similar PSI indicating that the mean PSI is equivalent to the population PSI mean as well.

## Study Design: MechaCar vs Competition

To see how MechaCar performs against the competition we need to test sevarl metrics of interest of the general population: **(1) city and highway fuel
efficiency and (2) cost of vehicle.** In order to measure these we will first use a summary statistic table to get the mean, median, standard deviation, and 
variance for each manufacturing lot of MechaCar vs its opponents. This will give us a broad breakdown of the averages we are dealing with for each side. In order 
to test the null hypothesis of MechaCar having better mileage on both city and highway usage we can plot a heatmap with the summary statistic table with the average 
MPG of city and highway with the manufacturing models as the axises. This will allow us to visually see which company has the best MPG for both city and highway use. 
The other metric cost of the vehicle, with a simple t-test can give us insight to see if the null hypthothesis of MechaCar having the more cost friendly vehicle by
dictating how much an average consumer would be willing to spend on a car we can test to see if MechaCar's prices are close enough to that pricepoint. Aftering running
the t-test we should be able to evaluate the p-value to see if it low to determine that the average prices are indeed the same as what an average consumer is willing
to spend on a car. Mainly numerical data will be needed to generate these tests, City MPG, Highway MPG, and Price are the main data points needed, a full list of all
the vehciles MechaCar has along with its competitors. 
