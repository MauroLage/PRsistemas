 use db_PRsistemas

 create table tbPessoa (
 PESSOA_ID bigint primary key identity(1000,1),
 NOME varchar(128) not null,
 CPF varchar(15),
 RG varchar(20),
 NOME_MAE varchar(128),
 NOME_PAI varchar(128)
 )