select 
			T0.[DocNum] as 'Número do documento',
			T0.[PlannedQty] as 'Quantidade planejada',
			T1.[Quantity] as 'Quantidade', 
			T0.[ItemCode] as 'Código do Item', 
			T0.[Project] as 'Projeto',
			convert(varchar(10), T2.[DocDate], 103) as 'Data Apontamento'

 from [dbo].OWOR T0

			inner join	[dbo].IGE1 T1 on T0.[DocEntry] = T1.[BaseEntry]
			inner join  [dbo].OIGE T2 on T1.[DocEntry] = T2.[DocEntry]

	where 
			T1.[BaseRef] = '4' and
			T1.[ItemCode] = 'R0001' and
			T1.[Dscription] = 'MAO DE OBRA - CORTE'