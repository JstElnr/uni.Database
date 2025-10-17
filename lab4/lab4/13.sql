DELETE FROM Boxes
USING Warehouses
WHERE Boxes.warehouse=Warehouse.code
AND Warehouse.location='New York'
RETURNING Boxes.*;