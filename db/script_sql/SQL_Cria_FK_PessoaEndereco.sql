use db_PRsistemas

alter table tbPessoa_Endereco
add constraint fkEnderecoPessoa
foreign key (PESSOA_ID) references tbPessoa(PESSOA_ID)
on delete cascade