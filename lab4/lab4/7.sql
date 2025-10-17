SELECT warehouse,
COUNT(*) AS box_count
FROM Boxes
GROUP BY warehouse;