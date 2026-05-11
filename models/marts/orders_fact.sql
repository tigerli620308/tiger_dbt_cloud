select
    O.OrderID,
    O.OrderDate,
    O.CustomerID,
    O.EmployeeID,
    O.StoreID,
    O.StatusCD,
    O.StatusDesc,
    COUNT(DISTINCT O.OrderID) AS OrderCount,
    SUM(OI.TotalPrice) AS Revenue
from 
{{ ref('orders_stg') }} o
join
{{ ref('orderitems_stg') }} oi
on o.orderid = oi.orderid
GROUP BY 1,2,3,4,5,6,7