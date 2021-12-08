--Select * from ['2018$'];

With Hotel as (
Select * from ['2018$']
UNION
Select * from ['2019$'] --Used [] when you have to show that the things inside bracket is the name of something.
UNION
Select * from ['2020$']) --Union is used for appending the tables.
Select arrival_date_year,hotel, sum((stays_in_weekend_nights+stays_in_week_nights)*adr) as Revenue from Hotel group by arrival_date_year,hotel ;--With clause is a CTE so it should always be run with a select satement at the end and the statement just before the with clause should beterminated with a ';'

With Hotel as (
Select * from ['2018$']
UNION
Select * from ['2019$'] 
UNION
Select * from ['2020$'])

select * from Hotel
left join market_segment$
on Hotel.market_segment=market_segment$.market_segment
left join meal_cost$
on Hotel.meal = meal_cost$.meal