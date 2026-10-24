# airbnb-nyc-pricing-analysis
Python, SQL, Power BI, and regression analysis of Airbnb prices in New York City.
# Airbnb NYC Pricing & Market Analysis

In this project, I analyzed Airbnb listings in New York City to understand how prices differ depending on the type of accommodation and its location. I used Python for data cleaning and exploration, MySQL for querying the data, Power BI for visualization, and regression analysis to investigate several factors associated with listing prices.

## The Dataset

I used the [NYC Airbnb Open Data (2019)](https://www.kaggle.com/datasets/dgomonov/new-york-city-airbnb-open-data) dataset. It contains 48,895 listings and 16 columns, including price, room type, neighbourhood, minimum nights, number of reviews, and availability.

## What I Did

### 1. Data Cleaning and Exploration with Python

I started by examining the dataset, checking missing values and duplicates, and looking at the distribution of listing prices.

There were no completely duplicated rows. I found 10,052 listings with no reviews, which explained the missing values in the review-related columns. I kept these listings because having no reviews is useful information in itself.

I also found 11 listings with a price of $0. I excluded them from the price analysis and created a separate cleaned dataset with 48,884 listings, leaving the original data unchanged.

I then compared prices across room types and locations and used histograms, boxplots, scatter plots, and correlation analysis to explore the data.

### 2. SQL Analysis with MySQL

I imported the full dataset into a MySQL database and used SQL queries to explore the results further. I compared average prices and listing counts across room types and neighbourhood groups, looked at minimum-night requirements and availability, and examined which neighbourhoods had the most listings.

This stage allowed me to practice working with a database and using filtering, aggregation, grouping, and sorting to answer analytical questions.

### 3. Power BI Dashboard

I created an interactive dashboard to make the results easier to explore. It includes summary cards, filters for neighbourhood group and room type, and charts comparing prices, listing counts, minimum nights, availability, and reviews. I also included a scatter plot comparing price with minimum-night requirements and a neighbourhood price comparison.

The filters allow users to explore how the results change when they select different locations or accommodation types. Price-based visuals exclude the 11 listings with a price of $0.

**Dashboard screenshot:** Put a picture.

### 4. Regression Analysis

Finally, I used multiple linear regression to examine the relationship between listing prices and variables such as room type, neighbourhood group, minimum nights, number of reviews, and availability.

The initial model using raw prices had an R² of 0.092. Because prices were strongly right-skewed, I also fitted a model using log(price + 1). Its R² was 0.472.

The results showed that room type and location were important factors associated with price. Compared with entire homes or apartments, private rooms were associated with approximately 54% lower prices and shared rooms with approximately 69% lower prices, holding the other included variables constant.

Compared with the Bronx, listings in Brooklyn were associated with approximately 29% higher prices, Manhattan with 77% higher prices, and Queens with 13% higher prices. The result for Staten Island was not statistically significant.

These findings describe associations rather than cause-and-effect relationships. Other factors not included in the model may also influence prices.

**Regression output screenshot:** Put a picture.

## Main Findings

- The average listing price was $152.72, while the median was $106.
- Entire homes and apartments had a median price of $160, compared with $70 for private rooms and $45 for shared rooms.
- Manhattan had the highest average price among the five neighbourhood groups, at approximately $196.88.
- Manhattan also had the highest median price within each room type.
- When comparing individual neighbourhoods, I focused on those with at least 50 listings to avoid relying on results from very small samples.

## Limitations

The dataset describes listings from 2019, so it does not reflect today's Airbnb market. Listing prices may also differ from the final amount guests pay. Very expensive listings can affect average prices, and the regression model cannot account for every factor that might influence pricing.

## Conclusion

This project helped me practice the main stages of a data analytics workflow, from cleaning and exploring data to querying a database, building an interactive dashboard, and interpreting regression results. Across these stages, room type and location consistently stood out as important factors associated with Airbnb listing prices in New York City.

## Tools Used

Python · Pandas · Matplotlib · Statsmodels · MySQL · SQL · Power BI · GitHub

## Dataset Source

[New York City Airbnb Open Data — Kaggle](https://www.kaggle.com/datasets/dgomonov/new-york-city-airbnb-open-data)
