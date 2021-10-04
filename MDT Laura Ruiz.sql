-- Where
-- 1. Mostrar los nombre de los productos que tengan cualquier combinación de
-- ‘mountain bike’
-- Tablas: Product
-- Campos: Name
SELECT name 
FROM product
where name like '%mountain bike%';
-- 2. Mostrar las personas cuyo nombre empiece con la letra “y”
-- Tablas: Contact
-- Campos: FirstName
-- Order by
SELECT FirstName 
FROM contact
WHERE FirstName like 'y%'
ORDER BY FirstName;

-- 1. Mostrar cinco productos más caros y su nombre ordenado en forma alfabética
-- Tablas: Product
-- Campos: Name, ListPrice
SELECT name, ListPrice
FROM product
ORDER BY ListPrice desc
LIMIT 5;

-- Operadores & joins
-- 1. Mostrar el nombre concatenado con el apellido de las personas cuyo apellido sea
-- johnson
-- Tablas: Contact
-- Campos: FirstName, LastName
SELECT concat(FirstName,' ' ,LastName) as nombre_apellido
FROM contact
where LastName like 'johnson';
-- 2. Mostrar todos los productos cuyo precio sea inferior a 150$ de color rojo o cuyo
-- precio sea mayor a 500$ de color negro
-- Tablas: Product
-- Campos: ListPrice, Color
-- Funciones de agregación
SELECT ListPrice, Color
FROM product
WHERE (ListPrice <150 AND Color = 'Red') OR (ListPrice >500 AND Color = 'Black');
-- 1. Mostrar la fecha más reciente de venta
-- Tablas: SalesOrderHeader
-- Campos: OrderDate
SELECT max(OrderDate)
FROM SalesOrderHeader;

-- 2. Mostrar el precio más barato de todas las bicicletas
-- Tablas: Product
-- Campos: ListPrice, Name
-- Group by
SELECT Min(ListPrice), Name
FROM Product
WHERE name LIKE '%bike%';
-- 1. Mostrar los productos y la cantidad total vendida de cada uno de ellos
-- Tablas: SalesOrderDetail
-- Campos: ProductID, OrderQty
-- Having
SELECT ProductID, sum(OrderQty) Cantidad  
FROM SalesOrderDetail
GROUP BY ProductID;
-- 1. Mostrar la cantidad de facturas que vendieron más de 20 unidades.
-- Tablas: Sales.SalesOrderDetail
-- Campos: SalesOrderID, OrderQty
SELECT SUM(OrderQty), SalesOrderID 
FROM salesorderdetail
GROUP BY SalesOrderID 
HAVING SUM(OrderQty) > 20;
-- Joins
-- 1. Mostrar el código de logueo, número de territorio y sueldo básico de los
-- vendedores
-- Tablas: Employee, SalesPerson
-- Campos: LoginID, TerritoryID, Bonus, BusinessEntityID
-- 2. Mostrar los productos que sean ruedas
-- Tablas: Product, ProductSubcategory
-- Campos: Name, ProductSubcategoryID

-- 3. Mostrar los nombres de los productos que no son bicicletas
-- Tablas: Product, ProductSubcategory
-- Campos: Name, ProductSubcategoryID