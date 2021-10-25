create database db_generation_game_online;
	use db_generation_game_online;
    
create table tb_classe (
	id_classes bigint (2) auto_increment,
		tipo varchar (30) not null unique,
        subtprof varchar (30) not null,
		vida int not null,
    
    primary key (id_classes)
);

insert into tb_classe (tipo, subtprof, vida) 
			values ("Guerreiro", "Huscarl", 3500),
					("Black Mago", "NecroDancer", 1250),
                    ("Mercador", "Mercador Cantante", 5000),
                    ("Exprolador", "Saqueador de Crypts", 500),
                    ("Arqueiro", "Balesteiro", 250);
                    
select * from tb_classe;

create table tb_persona (
	id_persona bigint (3) auto_increment,
		nome varchar (30) not null,
        golpe_principal varchar (30) not null,
        forca_ataque int not null,
        ult varchar (30),
        evoluir boolean not null,
        
		fk_Classe bigint (2),
		primary key (id_persona),
        
        foreign key (fk_Classe) references tb_classe(id_classes)
);

insert into tb_persona (nome, golpe_principal, forca_ataque, ult, evoluir, fk_Classe) 
				values ("Utheerd", "Machadada do Executor", 2500, "Parede de Escudos", false, 1),
						("??????", "Inventario", 10000, "Voz da Esperança", true, 3),
						("Legolas", "Eagle Shot", 3500, "Rain of Arrows", true, 5),
						("Josesvaldo", "Golpe dá Pá", 3600, "Achar tesouro", true, 4),
						("Zé", "Dirigir Bêbado", 9000, "Pissa no freio ZÈÈÈÈÈ`!!!", false, 5),
						("Aainz", "Dedo Ossudo", 7000, "Dança Mortal", true, 2),
						("Catrina", "Shild Bash", 500, "Bastion", false, 3),
						("Amanda", "Gople do Cajado", 2510, "Reaminar", false, 1);
                        
select * from tb_persona;
select * from tb_classe;

select * from tb_persona where nome like "???%"; 
select * from tb_persona where nome like "%eerd";
select * from tb_persona where nome like "%man%";

select nome, forca_ataque as `Força de Ataque` from tb_persona;
select nome, forca_ataque as `Força de Ataque` from tb_persona
order by forca_ataque desc limit 3;

select count(*) from tb_persona;  
select count(ult) from tb_persona;
select count(nome) from tb_persona where nome like "U%";

select sum(forca_ataque) from tb_persona;
select avg(forca_ataque) from tb_persona;
select max(forca_ataque) from tb_persona;
select min(forca_ataque) from tb_persona;