select distinct 
				 T1.[ItemCode] as 'Código do Item',
				 T1.[Dscription] as 'Descrição',
				 T3.[NcmCode] as 'Código NCM',
				 T1.[TaxCode] as 'Códgo de Imposto'
		


 from ORDR T0

				left join RDR1 T1 on T0.[DocEntry] = T1.[DocEntry]
				left join OITM T2 on T1.[ItemCode] = T2.[ItemCode]
				left join ONCM T3 on T2.[NCMCode] = T3.[AbsEntry]
	
	where T0.[DocStatus] = 'O' and

				(T1.[TaxCode] is null or T1.[TaxCode] = '') 


-- A consulta tem como objetivo trazer dados como Código do item, código NCM do item e os códigos de imposto cadastrados para este item. 
-- Observação: São considerados somente pedidos de venda em aberto que não possuem código de imposto inserido.