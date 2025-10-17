SELECT warehouse,
COUNT(*) AS box_count
FROM Boxes
GROUP BY warehouse
HAVING BY warehouse
HAVING COUNT(*)>2;