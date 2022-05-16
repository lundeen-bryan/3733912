USE [SAMPLEDB]
GO

/* #1
     SELECT [employee] = CONCAT(A.[first_name], ' ', A.[last_name])
          , A.[city]
       FROM [hcm].[employees] AS A
      WHERE 1=1
        AND A.[city] = 'Seattle' OR A.[city] = 'Sydney'
   ORDER BY A.[city]
;
--*/


/* #2
     SELECT [employee] = CONCAT(A.[first_name], ' ', A.[last_name])
          , A.[city]
       FROM [hcm].[employees] AS A
      WHERE 1=1
        AND A.[city] IN('Seattle', 'Sydney', 'Ascot', 'Hillston')
   ORDER BY A.[city]
;
--*/

/* #3
SELECT
  [employee] = CONCAT(C.[first_name], ' ', C.[last_name])
 , C.[city]
 ,[income] = FORMAT(C.[salary], '$#,##0.00')
FROM
 [hcm].[employees] AS C
WHERE 1=1
AND C.[salary] > 200000
AND C.[city] = 'Sydney'
ORDER BY C.[salary] DESC
;
--*/

--/* #4a
     SELECT [employee] = CONCAT(D.[first_name], ' ', D.[last_name])
          , D.[city]
          , D.[hire_date]
       FROM [hcm].[employees] AS D
      WHERE 1=1
        AND(D.[city] = 'Seattle'
         OR D.[city] = 'Sydney')
        AND D.[hire_date] >= '20190101'
;
--*/

--/* #4b
     SELECT [employee] = CONCAT(D.[first_name], ' ', D.[last_name])
          , D.[city]
          , D.[hire_date]
       FROM [hcm].[employees] AS D
      WHERE 1=1
        AND D.[city] IN('Seattle', 'Sydney')
        AND D.[hire_date] >= '20190101'
;
--*/

/* #5
SELECT
 [ID] = E.[category_id]
FROM
 [oes].[products] AS E
WHERE 1=1
AND E.[category_id] IN (3, 4, 6, 7, 8)
;
--*/





/*
  Filename: ...: 38-Logical_Operator_challenge.sql
  Date ........: 15-May-2022
  Time ........: 14:41
  Desc ........: Logical operator challenges
  Notes........:
    1. Select employees from the hcm.employees table who live in either
       Seattle or Sydney.
    * thought through the process by checking only for sydney then only seattle
    * the results where sydney = 6 and seattle = 39 so total = 45
    * The IN operator is 00.002 seconds slower than just OR
    * Returned 45 rows.
    2. Select employees who live in any of the followig cities:
    * Seattle, Sydney, Ascot, Hillston returned 47 rows
    4. Select employees who live in either Seattle or Sydney and were
       also hired on or after 1-1-2019.
*/



GO
--Sweaty Feet Will Give Horrible Oder
--SELECT, FROM, WHERE, GROUP BY, HAVING, ORDER BY
--Find out Who Got Half my Special Order
--FROM, WHERE, GROUP BY, HAVING, SELECT, ORDER BY
--
----Limitations of CTEs
--1. CTEs can only be used in the current query scope, meaning they cannot be referenced after the final SELECT
--2. This can be a problem if you need to reuse your virtual tables multi times for diff purposes
--3. cannot be referenced individually, making degugging more difficult
--4. certain optimization techniques are not available to CTEs
--SQL Join Types PDF
--https://drive.google.com/file/d/18i-g734BC3t08U9KaUafERi_5lNGBxp5/view?usp=sharing
--hostname DESKTOP-HKIAEAM\SQLEXPRESS