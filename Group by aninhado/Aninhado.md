# Group by
```select Atendentes_distintos, count(distinct CustomerID) as Clientes_distintos
from
(
select CustomerID, count(distinct EmployeeID) as Atendentes_distintos
from orders
where OrderDate between '1997-01-01' and '1997-12-31'
group by 1
order by 1
)
group by 1
order by 1
```
[Site do projeto](https://www.w3schools.com/sql/trysql.asp?filename=trysql_select_all)
<br/>
<p align="center">
    <img src="https://snipboard.io/NIYfST.jpg">
</p>
<p align="center">
    <img src="https://raw.githubusercontent.com/Cristiano301/Queries/master/Prints%20imagens/Resultado.JPG">
</p>


