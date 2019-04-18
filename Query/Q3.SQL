Select HC.name AS Chain_Name, count(hotel_id) AS Count From hotels HT
Left JOIN hotel_chain HC
ON HT.chain_id = HC.chain_id
GROUP BY HT.chain_id;
