create schema cars;
use cars; 
-- READ DATA--
SELECT * FROM car_dekho;
-- Total cars to get a count of total records--
select count(*) from car_dekho;
-- the manager asked the employee how many cars will be available in 2023--
select count(*) from car_dekho where year =2023;#6
-- the manager asked the employee how many cars will be available in 2020,2021,2022--
select count(*) from car_dekho where year=2020;#74
select count(*) from car_dekho where year=2021;#7
select count(*) from car_dekho where year=2022;#7
-- group by--
select count(*) from car_dekho where year in(2010,2021,2023) group by year;
-- client asked to print the total of all cars by year i dont want to see all details--
select year ,count(*) from car_dekho group by year;
-- client asked how many disal cars will be there in 2020--
select count(*) from car_dekho where year=2020 and fuel="Diesel";#20
-- client asked how many disal cars will be there in 2020--
select count(*) from car_dekho where year=2020 and fuel="Petrol";#51
-- print all the fuel cars by year--
select year,count(*) from car_dekho where fuel="Petrol" group by year;

select year,count(*) from car_dekho where fuel="Diesel" group by year;

select year,count(*) from car_dekho where fuel="CNG" group by year;

-- which year more then 100 cars--

select year, count(*) from car_dekho  group by year having count(*)>100;

--  car counts bt 2015b to 2023--

select count(*) from car_dekho where year between 2015 and 2023;

-- need complete list--

select * from car_dekho where year between 2015 and 2023;

------ END--------







