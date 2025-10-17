UPDATE Boxes
SET value=value*0.85
WHERE code=(
    SELECT code FROM Boxes
    ORDER BY value DESC
    OFFSET 2 LIMIT 1
);