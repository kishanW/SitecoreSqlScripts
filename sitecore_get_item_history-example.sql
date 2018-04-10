SELECT *
FROM Sitecore_master].[dbo].[History] his
WHERE
    his.ItemId in (
    '{7BCE1370-1990-4C63-964F-2D4EFD52C7C6}',   -- item 1
    '{1139FC0F-AE29-4FA2-99BA-82F777C436F2}'    -- item 2
    )