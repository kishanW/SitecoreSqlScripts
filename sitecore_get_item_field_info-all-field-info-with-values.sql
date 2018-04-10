select 
	it.ID
	, it.Name
	, fieldInfo.Name [Field Name]
	, fieldInfo.Updated [Field Updated On]
	, vf.Value
from 
	[SitecoreSitecore_Master].dbo.[Items] it						-- item info
	INNER JOIN [SitecoreSitecore_Master].dbo.[VersionedFields] vf	-- versioned field info
		ON vf.ItemId = it.ID
	INNER JOIN [SitecoreSitecore_Master].dbo.[Items] fieldInfo		-- more info on field
		ON fieldInfo.ID = vf.FieldId
where 1=1
	AND it.ID IN (
		'{1139FC0F-AE29-4FA2-99BA-82F777C436F2}'
		, '{7BCE1370-1990-4C63-964F-2D4EFD52C7C6}'
		)	-- your item id
	AND fieldInfo.Name NOT IN (								-- fields to skip
		'__Lock'
		,'__Owner'
	)
order by
	it.ID
	,fieldInfo.Updated 
desc
