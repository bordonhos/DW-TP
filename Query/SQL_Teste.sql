select distrito, Quant=count(*) from DIM_Clientes
group by distrito with cube

Select * from FACT_Vendas where FaixaEtaria is null

select * from FACT_Vendas v, DIM_Tempo t where Estacao is null and v.idTempo=t.idTempo 

select FaixaEtaria, Preco=sum(pvp) from FACT_Vendas 
group by FaixaEtaria with cube

select Estacao, Preco=sum(pvp) from FACT_Vendas 
group by Estacao with cube

select * from DIM_Produtos 

select AVG(v.PerDesc) from FACT_Vendas v, DIM_Clientes c where c.Distrito='Beja' and v.idCliente=c.idCliente
select AVG(v.PerDesc) from FACT_Vendas v, DIM_Clientes c, DIM_Tempo t where c.Distrito='Beja' and v.idCliente=c.idCliente 
	and v.idTempo=t.idTempo and t.Ano=2015 
select AVG(v.PerDesc) from FACT_Vendas v, DIM_Clientes c, DIM_Tempo t where c.Distrito='Beja' and v.idCliente=c.idCliente 
	and v.idTempo=t.idTempo and t.Ano=2014



