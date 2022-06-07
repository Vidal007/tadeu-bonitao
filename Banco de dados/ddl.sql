CREATE DATABASE catalogodejogosDB;
USE catalogodejogosDB;

CREATE TABLE tb_usuario (
   id_usuario		int primary key auto_increment,
   nm_usuario		varchar(200),
   ds_email			varchar(200),
   ds_senha			varchar(20)
);

CREATE TABLE tb_jogo (
	id_filme		int primary key auto_increment,
    id_usuario		int,
    nm_jogo		    varchar(200),
    ds_descricao	varchar(4000),
    vl_avaliacao	decimal(15,2),
    dt_lancamento	date,
    bt_disponivel	boolean,
    FOREIGN KEY (id_usuario) REFERENCES tb_usuario (id_usuario)
);

select * from tb_filme;