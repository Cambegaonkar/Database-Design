SELECT COUNT(RM.hotel_id) AS Total_Room, COUNT(BK.room_id) AS Room_Booked, (COUNT(RM.hotel_id)-COUNT(BK.room_id)) AS Room_Available
FROM rooms RM
LEFT JOIN booking BK
ON Rm.room_id=BK.room_id
where RM.hotel_id=1002;
