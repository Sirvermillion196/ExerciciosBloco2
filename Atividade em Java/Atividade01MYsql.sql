create database db_RH;

use db_RH;
create table tb_funcionarios (
	
    id bigint (5) auto_increment,
    nome varchar(255) not null,
    idade int (255) not null,
    habilidade1 varchar (255) not null,
    habilidade2 varchar (255) not null,
    funcao varchar (255) not null,
    salario decimal (10,2) not null,
    
    primary key (id)
    
);

insert into tb_funcionarios (nome, idade, habilidade1, habilidade2, funcao, salario) values ("Guilherme", 25, "Comunicativo", "Bom ouvinte","Assistente Administrativo", 2950.00);
insert into tb_funcionarios (nome, idade, habilidade1, habilidade2, funcao, salario) values ("Malcolm", 20, "Organizado", "Gentil", "Assistente Junior", 1800.00);
insert into tb_funcionarios (nome, idade, habilidade1, habilidade2, funcao, salario) values ("Josesvaldo", 35, "Líder", "Trabalho em equipe", "Gerente", 3950.00);
insert into tb_funcionarios (nome, idade, habilidade1, habilidade2, funcao, salario) values ("Ana", 15, "Vontade de aprender", "Bom ouvinte", "Jovem Aprendiz", 960.00);
insert into tb_funcionarios (nome, idade, habilidade1, habilidade2, funcao, salario) values ("Clarice", 65, "Comunicativo", "Dedicadas", "Gerente do Setor", 7950.00);


select * from tb_funcionarios where salario < 2000;
select * from tb_funcionarios where salario > 2000;

update tb_funcionarios set salario = 9000 where id = 5