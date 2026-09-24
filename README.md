# Sports Store Sales Analysis

## Overview 
This project uses Excel and MySQL to gather financial and customer key performance indicators (KPIs) in order to inform a key business decision. 

## Business Scenario
The owner of a sports retail store chain would like to improve the store’s customer engagement in order to increase shopping time and likelihood of purchases.

The key decision to make is how to rearrange items in stores.

## Dataset
The Kaggle link for this project's dataset can be found [here](https://www.kaggle.com/datasets/kanyianalyst/customer-age-group-segmentation)

<details>
  
<summary>Image of cleaned dataset</summary>

![image of cleaned dataset](https://github.com/chetputt/sports-store-sales-analysis/blob/main/images/table_image.png)

</details>

## Tech Stack
* Excel
* MySQL
  
## Methodology
For this project, I analyzed a Kaggle retail sales dataset to identify the most popular product categories and age groups among customers. I first loaded the CSV file into **Excel** to explore the dataset and clean the data based on the needs of the analysis. After preparing the data, I created a **MySQL** database and imported the cleaned dataset. I then wrote SQL queries to analyze product popularity, customer demographics, and product profitability. 

Actions done with Excel:
* Made all column names and data values lowercase when possible
* Created a “month” column that displayed text (January, February, etc…) instead of just month numbers
* Reformatted the “date” column to be “mm-dd-yyyy”
* Removed exact duplicate rows

SQL features/functions used:
* Subqueries
* Common Table Expressions (CTE)
* CASE WHEN
* RANK
* PARTITION BY
* GROUP BY
* Aggregate functions (SUM, COUNT)

## Queries and Outputs

### Product Popularity

**Most Popular Product Category Overall**

![Accessories were the most popular product category](https://github.com/chetputt/sports-store-sales-analysis/blob/main/images/item_popular.png)

<details>
<summary>View additional product popularity queries</summary>

#### Popularity by Age Group

![Product popularity by age group](https://github.com/chetputt/sports-store-sales-analysis/blob/main/images/item_popular_by_age.png)

#### Popularity by Country

![Product popularity by country](https://github.com/chetputt/sports-store-sales-analysis/blob/main/images/item_popular_by_country.png)

#### Popularity by Season

![Product popularity by season](https://github.com/chetputt/sports-store-sales-analysis/blob/main/images/item_popular_by_season.png)

</details>

---

### Age Group Analysis

**Most Popular Age Group Overall**

![Adults aged 35-64 were the most popular age group](https://github.com/chetputt/sports-store-sales-analysis/blob/main/images/age_group%20popular.png)

<details>
<summary>View additional age group queries</summary>

#### Popularity by Country

![Adults aged 35-64 were the most popular age group in every country](https://github.com/chetputt/sports-store-sales-analysis/blob/main/images/age_group_popular_by_country.png)

#### Popularity by Month

![Adults aged 35-64 were the most popular age group each month](https://github.com/chetputt/sports-store-sales-analysis/blob/main/images/age_group_popular_by_month.png)

#### Average Amount Spent

![Adults aged 35-64 spent $849.83 on average](https://github.com/chetputt/sports-store-sales-analysis/blob/main/images/age_group_popular_average_spent.png)

</details>

---

### Cost & Profitability

**Profitability by Product Category**

![Product categories ranked by profitability](https://github.com/chetputt/sports-store-sales-analysis/blob/main/images/item_profit.png)

<details>
<summary>View additional cost queries</summary>

#### Highest Purchase Cost by Product Category

![Highest purchase cost by product category](https://github.com/chetputt/sports-store-sales-analysis/blob/main/images/item_max_cost.png)

#### Lowest Purchase Cost by Product Category

![Lowest purchase cost by product category](https://github.com/chetputt/sports-store-sales-analysis/blob/main/images/item_min_cost.png)

</details>

## Key Insights

* Accessories were the most popular product category overall
* Adults (ages 35–64) were the most common customer age group
* Adults spent an average of $849.83 per purchase
* Bikes were the most profitable product category
* Purchase costs ranged from as little as $1 for accessories to as much as $42,978 for clothing

## Business Recommendations

Overall, the products in a store should be placed such that accessories are scattered or are more difficult to find, such as changing locations every few months. The least popular (clothing) and higher profit items (bikes) should be in between the entrance of a store and the most common product (accessories).

By following these arrangements, customers looking for a specific accessory will have to go through most of the store to find what they want, and along the way they may find other items to buy, even if they didn’t come to the store to buy them. 

An example image for a store’s arrangement:

![image of store arrangement](https://github.com/chetputt/sports-store-sales-analysis/blob/main/images/example_store_layout.png)

In addition to product arrangement, advertisements should cater towards adults between 35 and 64. For example, signs and posters with Millennial or Generation X type of humor could be posted around the store. TV or YouTube ads could also be created to appeal to this age group and get more customers in the door. 

## Weaknesses/Future Improvements

This analysis gets a good general picture of how products should be arranged, but the data excluding product names for purchases makes the analysis broad. If specific products were listed in the dataset, arrangements could be more specific and help inform the store owner where exactly an item should be placed.

Using the results of my queries, I created a sample arrangement for products. The effectiveness of this plan, however, would require testing, which I did not account for in my business recommendations. In addition to business recommendations, my future projects should suggest a testing plan that has a given time period, specific metrics to indicate improvements, and is realistic for a company to implement.














