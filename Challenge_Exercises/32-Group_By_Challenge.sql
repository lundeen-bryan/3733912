USE [SAMPLEDB]
GO

/* #1
     SELECT A.[department_id]
          , [total_employees] = COUNT(*)
       FROM [hcm].[employees] AS A
      WHERE 1=1
   GROUP BY A.[department_id]
   ORDER BY [total_employees]
;
--*/

/* #2a
     SELECT [dept.] = B.[department_id]
          , [avg_salary] = AVG(B.[salary])
       FROM [hcm].[employees] AS B
      WHERE 1=1
   GROUP BY B.[department_id]
   ORDER BY [avg_salary] DESC
;
--*/
/* #2b
     SELECT [dept.] = B.[department_id]
          , [avg_salary] = FORMAT(AVG(B.[salary]), '$#,##0.00')
       FROM [hcm].[employees] AS B
      WHERE 1=1
   GROUP BY B.[department_id]
   ORDER BY AVG(B.[salary]) DESC
;
--*/

/* #3
     SELECT C.[warehouse_id]
          , [on_hand] = SUM(C.[quantity_on_hand])
       FROM [oes].[inventories] AS C
      WHERE 1=1
   GROUP BY C.[warehouse_id]
HAVING SUM(C.[quantity_on_hand]) > 5000
   ORDER BY C.[warehouse_id]
;
--*/

/* #4
     SELECT [id] = D.[locality]
          , [last_count] = MAX(D.[date_of_count])
       FROM [bird].[antarctic_populations] AS D
      WHERE 1=1
   GROUP BY D.[locality]
   ORDER BY [last_count] DESC
;
--*/

--/* #5
SELECT
 [species] = D.[species_id]
 , [location] = D.[locality]
 , [last_count] = MAX(D.[date_of_count])
FROM
 [bird].[antarctic_populations] AS D
WHERE 1=1
GROUP BY D.[locality], D.[species_id]
ORDER BY [species]
;
--*/


/*
  Filename: ...: 32-Group_By_Challenge.sql
  Date ........: 15-May-2022
  Time ........: 10:59
  Desc ........: Group by challenge
  Notes........:
    1. write a query to give the total # of employees in ea dept as given
       by the department_id column in hcm.employees table.
    *  Good question to ask is do you want to see NULLs? by using the
    *  COUNT(*) function we see everything including nulls when we don't
    *  use the having clause.
    2. write a query to give the average salary in each department as
       given by the department_id column in hcm.employees table. Order
       the query result by average salary from highest to lowest.
    *  Note that it's better to put the aggregate functions in the ORDER
    *  by clause as well as the select clause. Else you have desc order
    *  problems.
    3. Write a query to give the total num of products on hand at each
       WH as given by warehouse_id column in oes.inventories tbl. Also
       limit the results to only warehouses which have greater than 5k
       product items on hand.
    4. What is the date of the most recent population count at each
       locality in the bird.antarctic_populations table?
    5. What is the date of the most recent population count for each
       species at each locality in the bird.antarctic_populations table?
*/



GO