
-- Q1- How many restaurants have rating greater than 4.5?

SELECT COUNT(DISTINCT restaurant_name) 
as high_rated_restaurants
from zomato_details
where rating > 4.5;

-- Q2- Which is the top 1 city which have the highest no. of restaurants?

SELECT city, COUNT(DISTINCT restaurant_name) AS restaurant_count
FROM zomato_details
GROUP BY city
ORDER BY restaurant_count DESC
LIMIT 1;

-- Q3- How many restaurants have the word 'Pizza' in their name?

SELECT COUNT(DISTINCT restaurant_name) AS desert_restaurant
FROM zomato_details
WHERE restaurant_name LIKE '%deserts%';

-- for printing the name of these desert resturant

SELECT DISTINCT restaurant_name AS desert_restaurant
FROM zomato_details
WHERE restaurant_name LIKE '%deserts%';

-- Q4- What is the most common cuisine among the restaurant in dataset?

select cuisine, count(*) as cuisine_count
from zomato_details
group by cuisine
order by cuisine_count desc
limit 1;

-- Q5- What is the average rating of restaurants in each city?

select city, avg (rating) as average_rating
from zomato_details 
group by city;

-- Q6- What is the highest price of item under the 'Recommended' category for each restaurant?

select distinct restaurant_name,
menu_category, max(price) as high_price
from zomato_details where menu_category= "Recommended"
group by restaurant_name, menu_category;

-- Q7- Find the top 5 most expensive restaurants that offer cuisine other than indian cuinsine

select distinct restaurant_name, cost_per_person
from zomato_details where cuisine <> "Indian"
order by cost_per_person desc
limit 5;

-- Q8- Find the restaurants that have an average cost which is higher than the total average cost of all restaurants together

select distinct restaurant_name, cost_per_person
from zomato_details where cost_per_person > (select avg(cost_per_person) from zomato_details);

-- Q9- Which restaurants offers the most number of item in the 'Main Course, category?

select distinct restaurant_name, menu_category, count(item) as no_of_items
from zomato_details where menu_category= 'Main Course'
group by restaurant_name, menu_category
order by no_of_items desc
limit 1;

-- Q10- List the number of restaurants that are 100% vegetarian in alphabetical order of restaurant name.

select distinct restaurant_name,
(count(case when veg_or_nonveg= 'veg' then 1 end)*100/
count(*)) as vegetarian_perc
from zomato_details
group by restaurant_name
having vegetarian_perc = 100.00
order by restaurant_name;

-- Q11 Which is the most cheapest restaurant/ Which is the restaurant providing the lowest average price for all items?

select distinct restaurant_name, avg(price) as avg_price
from zomato_details
group by restaurant_name
order by avg_price 
limit 1;

-- Q12- Which top 5 restaurants offers highest number of categories?

select distinct restaurant_name, count(menu_category) as category
from zomato_details
group by restaurant_name
order by category desc
limit 5;

-- Q13- Which restaurant dprovide the highest percentage of non-veg?

select distinct restaurant_name, 
(count(case when veg_or_nonveg = 'Non-veg' then 1 end)*100/
count(*)) as nonveg_per
from zomato_details
group by restaurant_name
order by nonveg_per desc
limit 1;
