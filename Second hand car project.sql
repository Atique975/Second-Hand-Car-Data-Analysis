create schema cars;
use cars;
#--READ DATA--
select * from car_deko;
#--total cars: to get a total count of records--
select count(*) from car_deko;
#-- the manager asked the employee how many cars will be available in 2023?--
select count(*) from car_deko where year = 2023;
#--The manager asked the employee how many cars are available in 2020,2021,2022?
select count(*) from car_deko where year = 2020; # --74
select count(*) from car_deko where year = 2021; #--7
select count(*) from car_deko where year = 2022; #--7
#--GROUP BY--
select count(*) from car_deko where year in (2020,2021,2022) group by year;
#-- client asked me to print total of all cars by year, i dont see details--
select year, count(*) as total_num from car_deko group by year;
#-- client asked to car dealer how many diesel cars will there be in 2020?
select count(*) from car_deko where year = 2020 and fuel = 'Diesel'; #--20
#-- client requestd a car dealer how many petrol cars will there be in 2020?
select count(*) from car_deko where year = 2020 and fuel = 'Petrol'; #-- 51
#-- the manager told the employee to give a print all the fuel cars( petrol, diesel and CNG) come by all year--
select year, count(*) as total_car from car_deko where fuel = 'petrol' group by year;
select year, count(*) as total_car from car_deko where fuel = 'Diesel' group by year;
select year, count(*) as total_car from car_deko where fuel = 'CNG' group by year;
#--Manager said there were more than 100 cars in a given year, which year had a more than 100 cars?--
select year, count(*) from car_deko group by year having count(*)>100;
#--The manager said to employee all cars count details between 2015 and 2023, we need a complete list--
select count(*) from car_deko where year between 2015 and 2023;
#--he manager said to employee all cars details between 2015 and 2023, we need a complete list
select * from car_deko where year between 2015 and 2023;

#--END--

