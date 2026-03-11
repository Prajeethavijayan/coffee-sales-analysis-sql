-- converting date of birth from string to date format.
CREATE OR REPLACE TABLE `coffee-sales-analysis-487117.coffee_data.cleaned_customer_data` AS
SELECT 
    * EXCEPT(date_of_birth),
    SAFE_CAST(date_of_birth AS DATE) AS date_of_birth
FROM `coffee-sales-analysis-487117.coffee_data.customer_level_data`;
