CREATE SCHEMA cars;
USE cars;

-- READ DATA--
SELECT*FROM car_dekho;

-- Total Cars : To get a count of total cars --
SELECT COUNT(*) FROM car_dekho;#7927

-- The Manager Asked the Employee How Many Cars will be avalaible in 2023 --
SELECT COUNT(*) FROM car_dekho WHERE year = 2023;#6

-- The Manager Asked the Employee How Many Cars will be avalaible in 2020,2021,2022 --
SELECT COUNT(*) FROM car_dekho WHERE year in(2020,2021,2022) GROUP BY year;

-- Client asked me to print the total of all cars by year, not all details --
SELECT YEAR, COUNT(*) FROM 	car_dekho GROUP BY year;

-- Client asked to car dealer agent how many diesel cars are avalaible from 2020? --
SELECT COUNT(*) FROM car_dekho WHERE year= 2020 AND fuel = "Diesel";#20
 
-- Client asked to car dealer agent how many petrol cars are avalaible from 2020? --
SELECT COUNT(*) FROM car_dekho WHERE year= 2020 AND fuel = "Petrol";#51 

-- The manager asked the employee to give a print of all the fuel cars(petrol , diesel, CNG) by all year --
SELECT year, COUNT(*) FROM 	car_dekho WHERE fuel= "Petrol" GROUP BY year;
SELECT year, COUNT(*) FROM 	car_dekho WHERE fuel= "Diesel" GROUP BY year;
SELECT year, COUNT(*) FROM 	car_dekho WHERE fuel= "CNG" GROUP BY year;

-- which year had more than 100 cars --
SELECT year, COUNT(*) FROM car_dekho GROUP BY year HAVING COUNT(*)>100;

-- All cars details Between 2015 and 2023 --
SELECT COUNT(*) FROM car_dekho WHERE YEAR BETWEEN 2015 AND 2023;

-- All cars details Between 2015 and 2023.Complete List --
SELECT * FROM car_dekho WHERE year BETWEEN 2015 AND 2023;


