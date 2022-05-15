USE [SAMPLEDB]
GO

--/* #1
     SELECT [ID] = A.[country_id]
          , A.[country_name]
       FROM [hcm].[countries] AS A
      WHERE 1=1
        AND A.[country_name] LIKE 'N%'
;
--*/

--/* #2
     SELECT [ID] = B.[customer_id]
          , B.[email]
       FROM [oes].[customers] AS B
      WHERE 1=1
        AND B.[email] LIKE '%gmail%'
;
--*/

--/* #3
     SELECT [ID] = C.[product_id]
          , C.[product_name]
       FROM [oes].[products] AS C
      WHERE 1=1
        AND C.[product_name] LIKE '%mouse%'
;
--*/

/*
  Filename: ...: 26-Pattern_Matching.sql
  Date ........: 15-May-2022
  Time ........: 09:17
  Desc ........: Exercises on pattern matching
  Notes........:
    1. coding challenge find countries that start with 'N'
    2. find any customers with a gmail account
    3. find any product with the word mouse in it
*/

GO