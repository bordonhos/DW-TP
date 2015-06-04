select distrito, Quant=count(*) from DIM_Clientes
group by distrito with cube

select FaixaEtaria, Preco=sum(pvp) from FACT_Vendas 
group by FaixaEtaria with cube

Select * from FACT_Vendas where FaixaEtaria is null

select * from FACT_Vendas v, DIM_Tempo t where Estacao is null and v.idTempo=t.idTempo 

