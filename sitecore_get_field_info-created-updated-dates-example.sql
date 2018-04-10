select 
	vf.ItemId,
	vf.Created [Created On],
	vf2.Updated [Updated On],
	it.*
from 
	[Sitecore_Master].[dbo].[VersionedFields] vf				-- 1st field info
	INNER JOIN [Sitecore_Master].[dbo].[VersionedFields] vf2	-- 2nd field info
		ON vf2.ItemId = vf.ItemId
	INNER JOIN [Sitecore_Master].[dbo].[Items] it				-- getting item info
		ON it.ID = vf.ItemId
where 1=1	
	AND vf.ItemId in (
    '{7BCE1370-1990-4C63-964F-2D4EFD52C7C6}',
    '{1139FC0F-AE29-4FA2-99BA-82F777C436F2}'
    )
	AND vf.FieldId = '{25BED78C-4957-4165-998A-CA1B52F67497}'   -- created on
	AND vf2.FieldId = '{D9CF14B1-FA16-4BA6-9288-E8A174D4D522}'  -- updated on
order by
	vf.ItemId,
	vf.Updated