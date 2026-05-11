-- https://www.youtube.com/watch?v=bunBelXfd2U, There are sample data here
-- https://github.com/sleekdata/oms-dbt-cloud/blob/main/macros/generate_schema_name.sql
select    
    CustomerID,
    FirstName,
    LastName,
    Email,
    Phone,
    Address,
    City,
    State,
    ZipCode,
    Updated_at,
    CONCAT(FirstName,' ', LastName) AS CustomerName
from {{ source("raw", "customers") }}
 