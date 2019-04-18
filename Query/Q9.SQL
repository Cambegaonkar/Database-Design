SELECT RM.hotel_id,RM.room_type,RM.price,(RM.price-(RM.price*OF.discount)/100) As Discounted_Price
FROM rooms RM
JOIN booking BK
ON RM.room_id=BK.room_id
JOIN offers OF
ON BK.offer_id=OF.offer_id
WHERE year(BK.check_in);
