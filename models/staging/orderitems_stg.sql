select 
    OrderItemID,
    OrderID,
    ProductID,
    Quantity,
    UnitPrice,
    Quantity * UnitPrice AS TotalPrice,
    Updated_at
from 
{{source('raw','orderitems')}}
