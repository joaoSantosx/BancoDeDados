select distinct 
				 T1.[ItemCode] as 'C�digo do Item',
				 T1.[Dscription] as 'Descri��o',
				 T3.[NcmCode] as 'C�digo NCM',
				 T1.[TaxCode] as 'C�dgo de Imposto'
		


 from ORDR T0

				left join RDR1 T1 on T0.[DocEntry] = T1.[DocEntry]
				left join OITM T2 on T1.[ItemCode] = T2.[ItemCode]
				left join ONCM T3 on T2.[NCMCode] = T3.[AbsEntry]
	
	where T0.[DocStatus] = 'O' and

				(T1.[TaxCode] is null or T1.[TaxCode] = '') 


-- A consulta tem como objetivo trazer dados como C�digo do item, c�digo NCM do item e os c�digos de imposto cadastrados para este item. 
-- Observa��o: S�o considerados somente pedidos de venda em aberto que n�o possuem c�digo de imposto inserido.