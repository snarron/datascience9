Simple BMI Calculator
========================================================
author: Shohei Narron
date: 7/5/2016

Why Calculate Your BMI?
========================================================

The Body Mass Index (BMI) is an easy rule-of-thumb to check your weight with respect to your height.

- No complicated calculation necessary
- No need to see the doctor

How Do You Calculate BMI?
========================================================

Your BMI can be calculated using the following formula, assuming the metric system:  
  
- Weight (kg) / Height (cm) ^ 2  
  
For the imperial system, you need to first convert your weight and height into the metric system as follows:
  
- Weight in kilograms = weight in pounds * 0.45  
- Height in centimeters = height in inches * 0.025

How Does the Backend Code Look Like?
========================================================

The R code running behind the Shiny app is an implementation of the previously-mentioned calculation.  

```r
bmiCalc <- function(weight,height) {
  weightCalc <- weight * 0.45
  heightCalc <- (height * 0.025)^2
  
  1.0 * weightCalc / heightCalc
```

What Is My Optimal BMI?
========================================================

According to the National Heart, Lung, and Blood Institute, BMI calculation results are categorized in the following buckets:  
  
Underweight = <18.5  
Normal weight = 18.5–24.9  
Overweight = 25–29.9  
Obesity = BMI of 30 or greater  

A Word of Caution - How Accurate is My BMI?
========================================================
BMI should only be used as a quick, back of the envelope calculation of your state of health. It does not take your age, genetics, or any other key factors of your health into consideration. You may naturally have a larger or smaller body, which can skew the results positively or negatively with no impact to your health.

