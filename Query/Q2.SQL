SELECT COUNT(RM.hotel_id) AS Total_Room, COUNT(BK.room_id) AS Room_Booked, (COUNT(RM.hotel_id)-COUNT(BK.room_id)) AS Room_Available
FROM rooms RM
LEFT JOIN booking BK
ON Rm.room_id=BK.room_id
where RM.room_id IN (SELECT RM.room_id from hotels where hotel_id=1001) AND '2017-12-01' >= check_in AND '2017-12-13' <=check_out;
