# Question 1 
# There were 305840 flights from Chicago
SELECT
count(*),
a2.name as origAirport,
a1.name as destAirportName,
c.name as carrierName
FROM flights o
JOIN airports a1 ON o.dest = a1.faa
JOIN airports a2 ON o.origin = a2.faa
JOIN carriers c ON o.carrier = c.carrier
WHERE year = 2013 
AND origin = "ORD";

#Question 2
# The sub-query takes nearly double the amount of time as compared to using joins
SELECT 
    COUNT(*), origin, dest, year
FROM
    flights
WHERE
    year = 2013 AND origin = 'ORD';
  
 #Question 3 
SELECT 
    flights.year, flights.tailnum, planes.tailnum, planes.model
FROM
    flights
        LEFT JOIN
    planes ON flights.tailnum = planes.tailnum
GROUP BY
	planes.model
HAVING
	flights.year = 2014
ORDER BY 
	planes.model desc;
    
#Question 4
SELECT 
    planes.tailnum, flights.year, flights.carrier, planes.model
FROM
    flights
        LEFT JOIN
    planes ON planes.tailnum = flights.tailnum
WHERE
    flights.year = 2015 AND carrier = 'AS'
GROUP BY planes.model;

#Question 5
SELECT planes.manufacturer, flights.carrier, flights.year, flights.tailnum, planes.tailnum, planes.year
FROM flights
LEFT JOIN
planes ON planes.tailnum = flights.tailnum
WHERE carrier = "DL" and flights.year = 2015
ORDER BY planes.year desc
LIMIT 0,10;

#Quesion 6
SELECT airports.name,flights.origin, flights.tailnum,flights.year
FROM airports
LEFT JOIN
flights ON airports.name = flights.origin
HAVING
	flights.year = 2015 and flights.tailnum ="N750AT"
LIMIT 0,22;


