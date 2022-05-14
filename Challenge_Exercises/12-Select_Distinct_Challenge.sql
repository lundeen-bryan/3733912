USE [SAMPLEDB]
GO

/* #region #1    */
/* returned 18 rows */
--/*
SELECT DISTINCT
*
FROM
 [bird].[antarctic_populations] AS A
WHERE 1=1
;
--*/
/* #endregion */

/* #region region-name   */
/* 6 distinct our of 18 */
--/*
SELECT DISTINCT
  [ID] = B.[species_id]
  , [Local] = B.[locality]
FROM
 [bird].[antarctic_populations] AS B
WHERE 1=1
;
--*/
/* #endregion */




/* #region Notes   */
/*
  Filename: ...: 12-Select_Distinct_Challenge.sql
  Date ........: 14-May-2022
  Time ........: 16:31
  Desc ........: The challenge for section 12
  Notes........:
    1.
*/
/* #endregion */



GO