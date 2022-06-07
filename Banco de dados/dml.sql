-- carga inicial usuário admin
INSERT INTO tb_usuario (nm_usuario, ds_email, ds_senha)
	VALUES ('admin', 'admin@admin.com.br', '1234');
    
    
    
    
-- CSU01:: efetuar login
select id_usuario		id,
	   nm_usuario		nome,
       ds_email			email
  from tb_usuario
 where ds_email			= 'admin@admin.com.br'
   and ds_senha			= '1234';


   -- CSU05:: consultar todos os filmes
SELECT id_filme			id,
	   nm_jogo			nome,
       vl_avaliacao		avaliacao,
       dt_lancamento	lancamento,
       bt_disponivel	disponivel
  FROM tb_jogo;