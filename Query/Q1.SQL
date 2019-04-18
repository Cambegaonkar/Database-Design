SELECT DISTINCT(fname) 
FROM customer CU
JOIN booking BK ON CU.customer_id=BK.customer_id
WHERE month(check_in)=01;
