-- 1
-- PVP por faixa etaria
select	FaixaEtaria, Preco=sum(pvp) 
from	FACT_Vendas 
group by FaixaEtaria with cube

-- 2
-- PVP por ano
select	sum(v.PVP),t.Ano
from	FACT_Vendas v, 
		DIM_Tempo t 
where	v.idTempo=t.idTempo 
Group by t.Ano
order by t.Ano

-- 3
-- Preço Final
-- Em 2014
-- No 3º Trimestre
-- Em Aveiro
-- Produtos de tamanho S
-- Da marca LA Woman
Select	sum(v.PVP-v.Desconto)
from	FACT_Vendas v,
		DIM_Tempo t,
		DIM_Clientes c,
		DIM_Produtos p
Where	v.idTempo=t.idTempo
		and t.Ano=2014
		and t.Trimestre=3
		and v.idCliente=c.idCliente
		and c.Distrito='Aveiro'
		and v.idProduto=p.idProduto
		and p.tamanho='S'
		and p.Marca='LA Women'
		