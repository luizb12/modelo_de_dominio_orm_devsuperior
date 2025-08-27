INSERT INTO tb_category(description) VALUES('curso');
INSERT INTO tb_category(description) VALUES('oficina');

INSERT INTO tb_activity(name, description, price, categories_id) VALUES('Curso de HTMl', 'Aprenda HTML de forma pratica', 80.00, 1);
INSERT INTO tb_activity(name, description, price, categories_id) VALUES('Oficina de Github', 'Controle versoes de seus projetos', 50.00, 2);

INSERT INTO tb_block(inicio,fim, activity_id) VALUES('2017-09-25 08:00:00', '2017-09-25 11:00:00', 1);
INSERT INTO tb_block(inicio,fim, activity_id) VALUES('2017-09-25 14:00:00', '2017-09-25 18:00:00', 2);
INSERT INTO tb_block(inicio,fim, activity_id) VALUES('2017-09-26 08:00:00', '2017-09-26 11:00:00', 2);

INSERT INTO tb_participant(name,email) VALUES('Jose Silva', 'jose@gmail.com');
INSERT INTO tb_participant(name,email) VALUES('Tiago Faria', 'tiago@gmail.com');
INSERT INTO tb_participant(name,email) VALUES('Maria do Rosario', 'maria@gmail.com');
INSERT INTO tb_participant(name,email) VALUES('Teresa Silva', 'teresa@gmail.com');

INSERT INTO tb_participant_activity(participant_id,activity_id) VALUES(1,1);
INSERT INTO tb_participant_activity(participant_id,activity_id) VALUES(1,2);
INSERT INTO tb_participant_activity(participant_id,activity_id) VALUES(2,1);
INSERT INTO tb_participant_activity(participant_id,activity_id) VALUES(3,1);
INSERT INTO tb_participant_activity(participant_id,activity_id) VALUES(3,2);
INSERT INTO tb_participant_activity(participant_id,activity_id) VALUES(4,2);









