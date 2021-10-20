create database QUIZ;
use QUIZ;
select * from VentasVideojuegos;
create view VentasRegion as 
select * from ( select Nombre,Plataforma,Anio,Genero,Ventas_EU , Ventas_JP, Ventas_NA from VentasVideojuegos) S
unpivot (VentasXregion for [Region] in ([Ventas_NA],[Ventas_EU],[Ventas_JP])) R;
select * from VentasRegion;