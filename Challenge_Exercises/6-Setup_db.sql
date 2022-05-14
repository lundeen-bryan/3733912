USE [SAMPLEDB]
GO

/* #region region-name   */
--/*
     SELECT [employee_id]
          , [first_name]
          , [salary]
       FROM [hcm].[employees] AS A
      WHERE 1=1
;
--*/
/* #endregion */

/* #region #1 challenge   */
--/*
SELECT
   A.[first_name]
 , A.[last_name]
FROM
 [hcm].[employees] AS A
WHERE 1=1
;
--*/
/* #endregion */

/* #region #2 challenge   */
--/*
SELECT
 [customer_last_name] = [last_name]
 , [city]
FROM
 [oes].[customers]
WHERE 1=1
;
--*/
/* #endregion */

/* #region #3 challenge  */
--/*
SELECT *
FROM [oes].[order_items]
--*/
/* #endregion */