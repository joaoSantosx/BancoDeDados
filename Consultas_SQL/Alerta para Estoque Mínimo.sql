select 
		T0.[ItemCode] as 'Código do Item',
		T0.[ItemName] as 'Descrição',
		T0.[OnHand] as	'Estoque',
		T1.[MinStock] as 'Estoque mínimo',
		(select isnull (sum (T00.[Quantity]), 0) from PRQ1 T00 where T0.[ItemCode] = T00.[ItemCode]) as 'Quantidade em SC',
		(select isnull (sum (T01.[Quantity]),0) from POR1 T01 where T0.[ItemCode] = T01.[ItemCode]) as 'Quantidade em PC'

from [dbo]. OITM T0

		inner join OITW T1 on T0.[ItemCode] = T1.[ItemCode]
 
where
		T0.[OnHand] < T1.[MinStock]



