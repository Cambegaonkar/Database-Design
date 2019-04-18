SELECT CU.fname, count(BK.customer_id) as 'Total Booking'
from customer CU
JOIN booking BK
ON CU.customer_id=BK.customer_id
WHERE YEAR(BK.check_in) = 2018
GROUP BY CU.customer_id;
