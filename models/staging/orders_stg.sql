-- https://www.youtube.com/watch?v=bunBelXfd2U, There are sample data here
-- https://github.com/sleekdata/oms-dbt-cloud/blob/main/macros/generate_schema_name.sql

select 
  OrderID,
    OrderDate,
    CustomerID,
    EmployeeID,
    StoreID,
    Status AS StatusCD,
        CASE
        WHEN Status = '01' THEN 'In Progress'
        WHEN Status = '02' THEN 'Completed'
        WHEN Status = '03' THEN 'Cancelled'
        ELSE NULL
    END AS StatusDesc,
    CASE
        WHEN StoreID = 1000 THEN 'Online'
        ELSE 'In-store'
    END AS ORDER_CHANNEL,
    Updated_at,
    current_timestamp as dbt_updated_at
 from 
{{source('raw','orders')}}