

SELECT
    p.Name AS เมนู,
    SUM(r.Quantity * i.CostPerUnit) AS ต้นทุนต่อแก้ว
FROM Recipes r
JOIN Products p ON p.ProductId = r.ProductId
JOIN Ingredients i ON i.IngredientId = r.IngredientId
GROUP BY p.Name
ORDER BY p.Name;


SELECT
    IngredientId,
    Name AS ชื่อวัตถุดิบ,
    Unit AS หน่วย,
    CostPerUnit AS ราคาต่อหน่วย,
    StockQty AS จำนวนคงเหลือ,
    ReorderLevel AS จุดสั่งซื้อ
FROM Ingredients
ORDER BY Name;


SELECT
    u.Email,
    ro.Name AS Role,
    e.EmployeeCode,
    e.FullName
FROM AspNetUsers u
JOIN AspNetUserRoles ur ON ur.UserId = u.Id
JOIN AspNetRoles ro ON ro.Id = ur.RoleId
JOIN Employees e ON e.UserId = u.Id
ORDER BY u.Email;