 use db_PRsistemas

 create table tbPessoa_Endereco (
 ENDERECO_ID bigint primary key identity(1000,1),
 CEP varchar(10) not null,
 ENDERECO varchar(256) not null,
 NUMERO varchar(20),
 CIDADE varchar(128) not null,
 ESTADO varchar(2) not null,
 PESSOA_ID bigint
 )