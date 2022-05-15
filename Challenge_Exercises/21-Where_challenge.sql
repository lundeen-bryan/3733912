USE [SAMPLEDB]
GO

/* #region #1 challenge where   */
/* returned 55 rows */
--/*
SELECT
*
FROM
 [oes].[products] AS P
WHERE 1=1
AND [list_price] > 100
;
--*/
/* #endregion */

/* #region #2 challenge where   */
--/*
SELECT
*
FROM
 [oes].[orders] AS O
WHERE 1=1
AND [shipped_date] IS NULL
;
--*/
/* #endregion */

/* #region #3 challenge where   */
--/*
SELECT
*
FROM
 [oes].[orders] AS O
WHERE 1=1
AND O.[order_date] = DATEFROMPARTS(2020, 02, 26)
;
--*/
/* #endregion */

/* #region #4 challenge where   */
/* returns 270 rows */
--/*
SELECT
*
FROM
 [oes].[orders] AS O
WHERE 1=1
AND [order_date] >= DATEFROMPARTS(2020, 01, 01)
;
--*/
/* #endregion */


/* #region Notes   */
/*
  Filename: ...: 21-Where_challenge.sql
  Date ........: 14-May-2022
  Time ........: 17:43
  Desc ........: Where Claus
  Notes........:
    1.
*/
/* #endregion */



GO