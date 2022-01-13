CREATE PROC [dbo].[ProductStockExportData] 
@SiteId UNIQUEIDENTIFIER,
@ProgramId UNIQUEIDENTIFIER,
@BrandId UNIQUEIDENTIFIER
AS
BEGIN
SELECT DISTINCT S.Code AS S_CODE,  PM.Name AS [PROGRAM], B.Name AS [BRAND], P.Code AS P_CODE, P.Name AS P_NAME, 
ISNULL(PS.MinStock,0) MinStock, ISNULL(PS.CurrentStock,0) CurrentStock FROM Product P
LEFT JOIN ProductStock PS ON P.Id = PS.ProductId AND PS.SiteId=@SiteId
LEFT JOIN Site S ON PS.SiteId = S.Id OR S.Id=@SiteId
LEFT JOIN Brand B ON P.BrandId = B.Id
LEFT JOIN ProgramMaster PM ON P.ProgramId = PM.Id
WHERE S.Id=@SiteId AND (B.Id = CAST(0x0 AS UNIQUEIDENTIFIER) OR B.Id = @BrandId)
 AND (P.Id = CAST(0x0 AS UNIQUEIDENTIFIER) OR P.Id = @ProgramId)
END