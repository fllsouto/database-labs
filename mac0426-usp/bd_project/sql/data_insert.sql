-- MAC0426 - Database System - Final Project 
-- Professor : Dr. Jose Eduardo Ferreira
-- Created by : Fellipe Souto Sampaio 
-- Usp Num : 7990422
-- Computer Science Student - Universidade de Sao Paulo (Brazil)
-- 
-- Por favor insira os dados nessa ordem

-- Peoples

INSERT INTO people (nickname, email, pname, mname, lname) VALUES ('fsouto', 'fellipe.s@gmail.com','Fellipe', 'Souto', 'Sampaio');
INSERT INTO people (nickname, email, pname, mname, lname) VALUES ('Risky Galaxy','redaqyssuk@gmail.com','Marcelo ','Othello ','Tito');
INSERT INTO people (nickname, email, pname, mname, lname) VALUES ('Cutie Wolf','whitesquirrel@gmail.com','Vitória ','Palmira ','Lalage');
INSERT INTO people (nickname, email, pname, mname, lname) VALUES ('subtan','RyanCostaRodrigues@armyspy.com ','Ryan','Costa','Rodrigues');
INSERT INTO people (nickname, email, pname, mname, lname) VALUES ('Bantais','DaniloMartinsPereira@dayrep.com ','Danilo','Martins','Pereira');
INSERT INTO people (nickname, email, pname, mname, lname) VALUES ('Fromed1939','MarcosRochaAlves@armyspy.com ','Marcos','Rocha','Alves');
INSERT INTO people (nickname, email, pname, mname, lname) VALUES ('Werater','LeticiaAzevedoSantos@dayrep.com ','Letícia','Azevedo','Santos');
INSERT INTO people (nickname, email, pname, mname, lname) VALUES ('Amed1963','LuisGoncalvesSantos@rhyta.com','Luis ','Goncalves','Santos');
INSERT INTO people (nickname, email, pname, mname, lname) VALUES ('Bellyn','MarinaSouzaRocha@jourrapide.com','Marina','Souza','Rocha');
INSERT INTO people (nickname, email, pname, mname, lname) VALUES ('Whown1969','KaiSouzaCardoso@rhyta.com','Kai','Souza','Cardoso');
INSERT INTO people (nickname, email, pname, mname, lname) VALUES ('Miscacer','JulianPereiraCorreia@rhyta.com','Julian','Pereira','Correia');
INSERT INTO people (nickname, email, pname, mname, lname) VALUES ('Becter','GabrielleRibeiroSousa@dayrep.com ','Gabrielle','Ribeiro','Sousa');

-- --------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Invites

-- Host : fsouto
INSERT INTO invitation (status,invited_at,guest_nickname) VALUES('REFUSED','2015-06-21 16:00:27 -0300' ,'Werater');
INSERT INTO contact (invitation_id,host_nickname,guest_nickname,status,ended_at) VALUES('1', 'fsouto', 'Werater', 'INACTIVE', '2015-06-21 16:02:07 -0300');
INSERT INTO invitation (status,invited_at,guest_nickname) VALUES('WAITING','2015-06-21 16:00:47 -0300' ,'Cutie Wolf');
INSERT INTO contact (invitation_id,host_nickname,guest_nickname,status,ended_at) VALUES('2', 'fsouto', 'Cutie Wolf', 'WAITING', NULL);
INSERT INTO invitation (status,invited_at,guest_nickname) VALUES('ACCEPTED','2015-06-21 16:01:07 -0300' ,'Bantais');
INSERT INTO contact (invitation_id,host_nickname,guest_nickname,status,ended_at) VALUES('3', 'fsouto', 'Bantais', 'ACTIVE', NULL);
INSERT INTO invitation (status,invited_at,guest_nickname) VALUES('ACCEPTED','2015-06-21 16:01:27 -0300' ,'Fromed1939');
INSERT INTO contact (invitation_id,host_nickname,guest_nickname,status,ended_at) VALUES('4', 'fsouto', 'Fromed1939', 'ACTIVE', NULL);
INSERT INTO invitation (status,invited_at,guest_nickname) VALUES('ACCEPTED','2015-06-21 16:01:47 -0300' ,'Amed1963');
INSERT INTO contact (invitation_id,host_nickname,guest_nickname,status,ended_at) VALUES('5', 'fsouto', 'Amed1963', 'ACTIVE', NULL);


-- Host : Risky Galaxy
INSERT INTO invitation (status,invited_at,guest_nickname) VALUES('ACCEPTED','2015-06-21 16:02:07 -0300' ,'Cutie Wolf');
INSERT INTO contact (invitation_id,host_nickname,guest_nickname,status,ended_at) VALUES('6', 'Risky Galaxy', 'Cutie Wolf', 'ACTIVE', NULL);
INSERT INTO invitation (status,invited_at,guest_nickname) VALUES('WAITING','2015-06-21 16:02:27 -0300' ,'subtan');
INSERT INTO contact (invitation_id,host_nickname,guest_nickname,status,ended_at) VALUES('7', 'Risky Galaxy', 'subtan', 'WAITING', NULL);
INSERT INTO invitation (status,invited_at,guest_nickname) VALUES('ACCEPTED','2015-06-21 16:02:47 -0300' ,'Bantais');
INSERT INTO contact (invitation_id,host_nickname,guest_nickname,status,ended_at) VALUES('8', 'Risky Galaxy', 'Bantais', 'ACTIVE', NULL);
INSERT INTO invitation (status,invited_at,guest_nickname) VALUES('ACCEPTED','2015-06-21 16:03:07 -0300' ,'Whown1969');
INSERT INTO contact (invitation_id,host_nickname,guest_nickname,status,ended_at) VALUES('9', 'Risky Galaxy', 'Whown1969', 'ACTIVE', NULL);


-- Host : subtan
INSERT INTO invitation (status,invited_at,guest_nickname) VALUES('ACCEPTED','2015-06-21 16:03:27 -0300' ,'Amed1963');
INSERT INTO contact (invitation_id,host_nickname,guest_nickname,status,ended_at) VALUES('10', 'subtan', 'Amed1963', 'ACTIVE', NULL);


-- Host : Bantais
INSERT INTO invitation (status,invited_at,guest_nickname) VALUES('ACCEPTED','2015-06-21 16:03:47 -0300' ,'Fromed1939');
INSERT INTO contact (invitation_id,host_nickname,guest_nickname,status,ended_at) VALUES('11', 'Bantais', 'Fromed1939', 'ACTIVE', NULL);


-- Host : Fromed1939
INSERT INTO invitation (status,invited_at,guest_nickname) VALUES('ACCEPTED','2015-06-21 16:04:07 -0300' ,'Amed1963');
INSERT INTO contact (invitation_id,host_nickname,guest_nickname,status,ended_at) VALUES('12', 'Fromed1939', 'Amed1963', 'ACTIVE', NULL);


-- Host : Werater
INSERT INTO invitation (status,invited_at,guest_nickname) VALUES('WAITING','2015-06-21 16:04:27 -0300' ,'Amed1963');
INSERT INTO contact (invitation_id,host_nickname,guest_nickname,status,ended_at) VALUES('13', 'Werater', 'Amed1963', 'WAITING', NULL);
INSERT INTO invitation (status,invited_at,guest_nickname) VALUES('ACCEPTED','2015-06-21 16:04:47 -0300' ,'Whown1969');
INSERT INTO contact (invitation_id,host_nickname,guest_nickname,status,ended_at) VALUES('14', 'Werater', 'Whown1969', 'ACTIVE', NULL);


-- Host : Amed1963
INSERT INTO invitation (status,invited_at,guest_nickname) VALUES('REFUSED','2015-06-21 16:05:07 -0300' ,'Bellyn');
INSERT INTO contact (invitation_id,host_nickname,guest_nickname,status,ended_at) VALUES('15', 'Amed1963', 'Bellyn', 'INACTIVE', '2015-06-21 16:06:47 -0300');
INSERT INTO invitation (status,invited_at,guest_nickname) VALUES('REFUSED','2015-06-21 16:05:27 -0300' ,'Becter');
INSERT INTO contact (invitation_id,host_nickname,guest_nickname,status,ended_at) VALUES('16', 'Amed1963', 'Becter', 'INACTIVE', '2015-06-21 16:07:07 -0300');


-- Host : Bellyn
INSERT INTO invitation (status,invited_at,guest_nickname) VALUES('ACCEPTED','2015-06-21 16:05:47 -0300' ,'Risky Galaxy');
INSERT INTO contact (invitation_id,host_nickname,guest_nickname,status,ended_at) VALUES('17', 'Bellyn', 'Risky Galaxy', 'ACTIVE', NULL);
INSERT INTO invitation (status,invited_at,guest_nickname) VALUES('WAITING','2015-06-21 16:06:07 -0300' ,'subtan');
INSERT INTO contact (invitation_id,host_nickname,guest_nickname,status,ended_at) VALUES('18', 'Bellyn', 'subtan', 'WAITING', NULL);
INSERT INTO invitation (status,invited_at,guest_nickname) VALUES('REFUSED','2015-06-21 16:06:27 -0300' ,'Fromed1939');
INSERT INTO contact (invitation_id,host_nickname,guest_nickname,status,ended_at) VALUES('19', 'Bellyn', 'Fromed1939', 'INACTIVE', '2015-06-21 16:08:07 -0300');
INSERT INTO invitation (status,invited_at,guest_nickname) VALUES('REFUSED','2015-06-21 16:06:47 -0300' ,'Whown1969');
INSERT INTO contact (invitation_id,host_nickname,guest_nickname,status,ended_at) VALUES('20', 'Bellyn', 'Whown1969', 'INACTIVE', '2015-06-21 16:08:27 -0300');
INSERT INTO invitation (status,invited_at,guest_nickname) VALUES('WAITING','2015-06-21 16:07:07 -0300' ,'Becter');
INSERT INTO contact (invitation_id,host_nickname,guest_nickname,status,ended_at) VALUES('21', 'Bellyn', 'Becter', 'WAITING', NULL);


-- Host : Miscacer
INSERT INTO invitation (status,invited_at,guest_nickname) VALUES('REFUSED','2015-06-21 16:07:27 -0300' ,'Cutie Wolf');
INSERT INTO contact (invitation_id,host_nickname,guest_nickname,status,ended_at) VALUES('22', 'Miscacer', 'Cutie Wolf', 'INACTIVE', '2015-06-21 16:09:07 -0300');
INSERT INTO invitation (status,invited_at,guest_nickname) VALUES('REFUSED','2015-06-21 16:07:47 -0300' ,'subtan');
INSERT INTO contact (invitation_id,host_nickname,guest_nickname,status,ended_at) VALUES('23', 'Miscacer', 'subtan', 'INACTIVE', '2015-06-21 16:09:27 -0300');
INSERT INTO invitation (status,invited_at,guest_nickname) VALUES('REFUSED','2015-06-21 16:08:07 -0300' ,'Becter');
INSERT INTO contact (invitation_id,host_nickname,guest_nickname,status,ended_at) VALUES('24', 'Miscacer', 'Becter', 'INACTIVE', '2015-06-21 16:09:47 -0300');

-- --------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Conversations 

INSERT INTO conversation (contact_id,host_nickname,guest_nickname,created_at) VALUES('5','fsouto' ,'Amed1963', '2015-06-27 11:16:04 -0300');
INSERT INTO conversation (contact_id,host_nickname,guest_nickname,created_at) VALUES('6','Risky Galaxy' ,'Cutie Wolf', '2015-06-27 11:16:54 -0300');
INSERT INTO conversation (contact_id,host_nickname,guest_nickname,created_at) VALUES('10','subtan' ,'Amed1963', '2015-06-27 11:18:34 -0300');
INSERT INTO conversation (contact_id,host_nickname,guest_nickname,created_at) VALUES('17','Bellyn' ,'Risky Galaxy', '2015-06-27 11:21:54 -0300');
INSERT INTO conversation (contact_id,host_nickname,guest_nickname,created_at) VALUES('9','Risky Galaxy' ,'Whown1969', '2015-06-27 11:28:34 -0300');
INSERT INTO conversation (contact_id,host_nickname,guest_nickname,created_at) VALUES('12','Fromed1939' ,'Amed1963', '2015-06-27 11:41:54 -0300');

-- Profile photos

INSERT INTO multimedia (fingerprint, creator_nickname, message_id, type, server_url) VALUES('aHR0cHM6Ly9zMy5hbWF6b25hd3MuY29tL3VpZmFjZXMvZmFjZXMvdHdpdHRl
ci9zaWxseWxlby8xMjguanBn
', 'fsouto', NULL, 'IMAGE', 'https://s3.amazonaws.com/uifaces/faces/twitter/sillyleo/128.jpg');
INSERT INTO multimedia (fingerprint, creator_nickname, message_id, type, server_url) VALUES('aHR0cHM6Ly9zMy5hbWF6b25hd3MuY29tL3VpZmFjZXMvZmFjZXMvdHdpdHRl
ci9zYXVyby8xMjguanBn
', 'Risky Galaxy', NULL, 'IMAGE', 'https://s3.amazonaws.com/uifaces/faces/twitter/sauro/128.jpg');
INSERT INTO multimedia (fingerprint, creator_nickname, message_id, type, server_url) VALUES('aHR0cHM6Ly9zMy5hbWF6b25hd3MuY29tL3VpZmFjZXMvZmFjZXMvdHdpdHRl
ci9yZW0vMTI4LmpwZw==
', 'Cutie Wolf', NULL, 'IMAGE', 'https://s3.amazonaws.com/uifaces/faces/twitter/rem/128.jpg');
INSERT INTO multimedia (fingerprint, creator_nickname, message_id, type, server_url) VALUES('aHR0cHM6Ly9zMy5hbWF6b25hd3MuY29tL3VpZmFjZXMvZmFjZXMvdHdpdHRl
ci9hZGVsbGVjaGFybGVzLzEyOC5qcGc=
', 'subtan', NULL, 'IMAGE', 'https://s3.amazonaws.com/uifaces/faces/twitter/adellecharles/128.jpg');
INSERT INTO multimedia (fingerprint, creator_nickname, message_id, type, server_url) VALUES('aHR0cHM6Ly9zMy5hbWF6b25hd3MuY29tL3VpZmFjZXMvZmFjZXMvdHdpdHRl
ci9qaW5hLzEyOC5qcGc=
', 'Bantais', NULL, 'IMAGE', 'https://s3.amazonaws.com/uifaces/faces/twitter/jina/128.jpg');
INSERT INTO multimedia (fingerprint, creator_nickname, message_id, type, server_url) VALUES('aHR0cHM6Ly9zMy5hbWF6b25hd3MuY29tL3VpZmFjZXMvZmFjZXMvdHdpdHRl
ci9tYW50aWEvMTI4LmpwZw==
', 'Werater', NULL, 'IMAGE', 'https://s3.amazonaws.com/uifaces/faces/twitter/mantia/128.jpg');
INSERT INTO multimedia (fingerprint, creator_nickname, message_id, type, server_url) VALUES('aHR0cHM6Ly9zMy5hbWF6b25hd3MuY29tL3VpZmFjZXMvZmFjZXMvdHdpdHRl
ci9waXhlbGlyaXMvMTI4LmpwZw==
', 'Amed1963', NULL, 'IMAGE', 'https://s3.amazonaws.com/uifaces/faces/twitter/pixeliris/128.jpg');
INSERT INTO multimedia (fingerprint, creator_nickname, message_id, type, server_url) VALUES('aHR0cHM6Ly9zMy5hbWF6b25hd3MuY29tL3VpZmFjZXMvZmFjZXMvdHdpdHRl
ci90aW1vbmkvMTI4LmpwZw==
', 'Bellyn', NULL, 'IMAGE', 'https://s3.amazonaws.com/uifaces/faces/twitter/timoni/128.jpg');
INSERT INTO multimedia (fingerprint, creator_nickname, message_id, type, server_url) VALUES('aHR0cHM6Ly9zMy5hbWF6b25hd3MuY29tL3VpZmFjZXMvZmFjZXMvdHdpdHRl
ci90b255Y2hlc3Rlci8xMjguanBn
', 'Whown1969', NULL, 'IMAGE', 'https://s3.amazonaws.com/uifaces/faces/twitter/tonychester/128.jpg');
INSERT INTO multimedia (fingerprint, creator_nickname, message_id, type, server_url) VALUES('aHR0cHM6Ly9zMy5hbWF6b25hd3MuY29tL3VpZmFjZXMvZmFjZXMvdHdpdHRl
ci91eGNlby8xMjguanBn
', 'Miscacer', NULL, 'IMAGE', 'https://s3.amazonaws.com/uifaces/faces/twitter/uxceo/128.jpg');
INSERT INTO multimedia (fingerprint, creator_nickname, message_id, type, server_url) VALUES('aHR0cHM6Ly9zMy5hbWF6b25hd3MuY29tL3VpZmFjZXMvZmFjZXMvdHdpdHRl
ci9hbGxpc29uZ3JheWNlLzEyOC5qcGc=
', 'Becter', NULL, 'IMAGE', 'https://s3.amazonaws.com/uifaces/faces/twitter/allisongrayce/128.jpg');
INSERT INTO multimedia (fingerprint, creator_nickname, message_id, type, server_url) VALUES('aHR0cHM6Ly9zMy5hbWF6b25hd3MuY29tL3VpZmFjZXMvZmFjZXMvdHdpdHRl
ci9zb3J0aW5vLzEyOC5qcGc=
', 'Fromed1939', NULL, 'IMAGE', 'https://s3.amazonaws.com/uifaces/faces/twitter/sortino/128.jpg');

-- Conversation type 1 - Normal conversation

INSERT INTO message (conversation_id, sended_at, received_at, sender_nickname, receiver_nickname, type, content) VALUES('1', '2015-06-27 11:09:57 -0300', '2015-06-27 11:09:59 -0300', 'Amed1963', 'fsouto', 'TEXT', 'Onde está Florence? Pergunto-lhe onde está Florence.');
INSERT INTO message (conversation_id, sended_at, received_at, sender_nickname, receiver_nickname, type, content) VALUES('1', '2015-06-27 11:10:02 -0300', '2015-06-27 11:10:07 -0300', 'fsouto', 'Amed1963', 'TEXT', 'Não sei de nada.');
INSERT INTO message (conversation_id, sended_at, received_at, sender_nickname, receiver_nickname, type, content) VALUES('1', '2015-06-27 11:10:12 -0300', '2015-06-27 11:10:22 -0300', 'Amed1963', 'fsouto', 'TEXT', 'Foi só isso que conseguiu descobrir? A tortura pela ausência? Pois falhou. Florence era uma bobinha e não me faz falta.');
INSERT INTO message (conversation_id, sended_at, received_at, sender_nickname, receiver_nickname, type, content) VALUES('1', '2015-06-27 11:10:32 -0300', '2015-06-27 11:10:52 -0300', 'fsouto', 'Amed1963', 'TEXT', 'Queira perdoar-me: quem está pensando que eu sou?');
INSERT INTO message (conversation_id, sended_at, received_at, sender_nickname, receiver_nickname, type, content) VALUES('1', '2015-06-27 11:11:12 -0300', '2015-06-27 11:11:52 -0300', 'Amed1963', 'fsouto', 'TEXT', 'O senhor? O senhor é o carrasco.');
INSERT INTO message (conversation_id, sended_at, received_at, sender_nickname, receiver_nickname, type, content) VALUES('1', '2015-06-27 11:12:32 -0300', '2015-06-27 11:13:52 -0300', 'fsouto', 'Amed1963', 'TEXT', 'É um equívoco engraçadíssimo. O carrasco: é boa! A senhora entrou, olhou para mim e pensou: é o carrasco. Que extravagância! O criado é um ridículo: deveria ter-nos apresentado. O carrasco! Eu sou Joseph Garcin, publicista e homem-de-letras. O fato é que estamos hospedados no mesmo estabelecimento. Senhora...');
INSERT INTO message (conversation_id, sended_at, received_at, sender_nickname, receiver_nickname, type, content) VALUES('1', '2015-06-27 11:15:12 -0300', '2015-06-27 11:17:52 -0300', 'Amed1963', 'fsouto', 'TEXT', 'Inês Serrano. Senhorita.');
INSERT INTO message (conversation_id, sended_at, received_at, sender_nickname, receiver_nickname, type, content) VALUES('1', '2015-06-27 11:20:32 -0300', '2015-06-27 11:25:52 -0300', 'fsouto', 'Amed1963', 'TEXT', 'Muito bem. Perfeito. Pois é, derreteu-se o gelo. Quer dizer que me acha com cara de carrasco? Quer fazer o favor de me explicar como é que se reconhecem os carrascos?');
INSERT INTO message (conversation_id, sended_at, received_at, sender_nickname, receiver_nickname, type, content) VALUES('1', '2015-06-27 11:31:12 -0300', '2015-06-27 11:41:52 -0300', 'Amed1963', 'fsouto', 'TEXT', 'Têm cara de quem tem medo.');
INSERT INTO message (conversation_id, sended_at, received_at, sender_nickname, receiver_nickname, type, content) VALUES('1', '2015-06-27 11:52:32 -0300', '2015-06-27 12:13:52 -0300', 'fsouto', 'Amed1963', 'TEXT', 'Medo? É esquisitíssimo! Medo de quem? De suas vítimas?');
INSERT INTO message (conversation_id, sended_at, received_at, sender_nickname, receiver_nickname, type, content) VALUES('1', '2015-06-27 12:35:12 -0300', '2015-06-27 13:17:52 -0300', 'Amed1963', 'fsouto', 'TEXT', 'Ora! Sei bem, o que estou dizendo. Espelho não me falta.');
INSERT INTO message (conversation_id, sended_at, received_at, sender_nickname, receiver_nickname, type, content) VALUES('1', '2015-06-27 14:00:32 -0300', '2015-06-27 15:25:52 -0300', 'fsouto', 'Amed1963', 'TEXT', 'Espelho? Que droga! Tiraram daqui tudo quanto pudesse parecer-se com um espelho. Em todo caso, posso garantir-lhe que não tenho medo. Não considero levianamente a situação, e estou perfeitamente cônscio de sua gravidade. Mas não tenho medo.');
INSERT INTO message (conversation_id, sended_at, received_at, sender_nickname, receiver_nickname, type, content) VALUES('1', '2015-06-27 16:51:12 -0300', '2015-06-27 19:41:52 -0300', 'Amed1963', 'fsouto', 'TEXT', 'Isso é com o senhor. Será que o senhor sai, de vez em quando, para um passeio?');
INSERT INTO message (conversation_id, sended_at, received_at, sender_nickname, receiver_nickname, type, content) VALUES('1', '2015-06-27 22:32:32 -0300', '2015-06-28 04:13:52 -0300', 'fsouto', 'Amed1963', 'TEXT', 'A porta está trancada.');
INSERT INTO message (conversation_id, sended_at, received_at, sender_nickname, receiver_nickname, type, content) VALUES('1', '2015-06-28 09:55:12 -0300', '2015-06-28 21:17:52 -0300', 'Amed1963', 'fsouto', 'TEXT', 'É pena.');
INSERT INTO message (conversation_id, sended_at, received_at, sender_nickname, receiver_nickname, type, content) VALUES('1', '2015-06-29 08:40:32 -0300', '2015-06-30 07:25:52 -0300', 'fsouto', 'Amed1963', 'TEXT', 'Compreendo muito bem que minha presença a aborreça. E, se dependesse de mim, preferiria estar só. Tenho que por a minha vida em ordem e preciso de sossego. Mas tenho certeza de que nos acostumaremos um ao outro: não falo, quase. Não me movo, e faço pouco barulho. Apenas, se me atrevo a dar um conselho, será bom conservarmos entre nós uma extrema polidez. Será nossa melhor defesa.');
INSERT INTO message (conversation_id, sended_at, received_at, sender_nickname, receiver_nickname, type, content) VALUES('1', '2015-07-01 06:11:12 -0300', '2015-07-03 03:41:52 -0300', 'Amed1963', 'fsouto', 'TEXT', 'Não sou bem-educada.');
INSERT INTO message (conversation_id, sended_at, received_at, sender_nickname, receiver_nickname, type, content) VALUES('1', '2015-07-05 01:12:32 -0300', '2015-07-08 20:13:52 -0300', 'fsouto', 'Amed1963', 'TEXT', 'Eu o serei por dois.');


-- Conversatio type 2 - Conversation with file sharing

INSERT INTO message (conversation_id, sended_at, received_at, sender_nickname, receiver_nickname, type, content) VALUES('4', '2015-06-27 11:58:40 -0300', '2015-06-27 11:58:42 -0300', 'Risky Galaxy', 'Bellyn', 'TEXT', 'Onde está Florence? Pergunto-lhe onde está Florence.');
INSERT INTO message (conversation_id, sended_at, received_at, sender_nickname, receiver_nickname, type, content) VALUES('4', '2015-06-27 11:58:45 -0300', '2015-06-27 11:58:50 -0300', 'Bellyn', 'Risky Galaxy', 'TEXT', '');
INSERT INTO multimedia (fingerprint, creator_nickname, message_id, type, server_url) VALUES('aHR0cHM6Ly9kcml2ZS5nb29nbGUuY29tL29wZW4/aWQ9MEI1RlJKWHlpU0hZ
TVIzcEhOR05pZFhOSGEycyZhdXRodXNlcj0w
', 'Risky Galaxy', '20', 'SOUND', 'https://drive.google.com/open?id=0B5FRJXyiSHYMR3pHNGNidXNHa2s&authuser=0');
INSERT INTO message (conversation_id, sended_at, received_at, sender_nickname, receiver_nickname, type, content) VALUES('4', '2015-06-27 11:58:55 -0300', '2015-06-27 11:59:05 -0300', 'Bellyn', 'Risky Galaxy', 'TEXT', 'Essa da foto?');
INSERT INTO message (conversation_id, sended_at, received_at, sender_nickname, receiver_nickname, type, content) VALUES('4', '2015-06-27 11:59:15 -0300', '2015-06-27 11:59:35 -0300', 'Risky Galaxy', 'Bellyn', 'TEXT', 'Foi só isso que conseguiu descobrir? Como conseguiu essa foto?');
INSERT INTO message (conversation_id, sended_at, received_at, sender_nickname, receiver_nickname, type, content) VALUES('4', '2015-06-27 11:59:55 -0300', '2015-06-27 12:00:35 -0300', 'Bellyn', 'Risky Galaxy', 'TEXT', 'Essa é a foto mais atual dela');
INSERT INTO message (conversation_id, sended_at, received_at, sender_nickname, receiver_nickname, type, content) VALUES('4', '2015-06-27 12:01:15 -0300', '2015-06-27 12:02:35 -0300', 'Risky Galaxy', 'Bellyn', 'TEXT', '');
INSERT INTO multimedia (fingerprint, creator_nickname, message_id, type, server_url) VALUES('aHR0cHM6Ly9kcml2ZS5nb29nbGUuY29tL29wZW4/aWQ9MEI1RlJKWHlpU0hZ
TWJWUjNiRUZtY1VWT1ZWRSZhdXRodXNlcj0w
', 'Risky Galaxy', '24', 'IMAGE', 'https://drive.google.com/open?id=0B5FRJXyiSHYMbVR3bEFmcUVOVVE&authuser=0');
INSERT INTO message (conversation_id, sended_at, received_at, sender_nickname, receiver_nickname, type, content) VALUES('4', '2015-06-27 12:03:55 -0300', '2015-06-27 12:06:35 -0300', 'Risky Galaxy', 'Bellyn', 'TEXT', 'Ouve essa música');
INSERT INTO message (conversation_id, sended_at, received_at, sender_nickname, receiver_nickname, type, content) VALUES('4', '2015-06-27 12:09:15 -0300', '2015-06-27 12:14:35 -0300', 'Bellyn', 'Risky Galaxy', 'TEXT', '');
INSERT INTO multimedia (fingerprint, creator_nickname, message_id, type, server_url) VALUES('aHR0cHM6Ly9kcml2ZS5nb29nbGUuY29tL2ZpbGUvZC8wQjVGUkpYeWlTSFlN
U0VVMlUwNWthRU4xT1djL2VkaXQ=
', 'Bellyn', '26', 'IMAGE', 'https://drive.google.com/file/d/0B5FRJXyiSHYMSEU2U05kaEN1OWc/edit');
INSERT INTO message (conversation_id, sended_at, received_at, sender_nickname, receiver_nickname, type, content) VALUES('4', '2015-06-27 12:19:55 -0300', '2015-06-27 12:30:35 -0300', 'Bellyn', 'Risky Galaxy', 'TEXT', 'Que legal!');


-- Conversation type 3 - Conversation that ended

INSERT INTO message (conversation_id, sended_at, received_at, sender_nickname, receiver_nickname, type, content) VALUES('3', '2015-06-27 11:59:44 -0300', '2015-06-27 11:59:46 -0300', 'Amed1963', 'subtan', 'TEXT', '');
INSERT INTO multimedia (fingerprint, creator_nickname, message_id, type, server_url) VALUES('aHR0cHM6Ly9kcml2ZS5nb29nbGUuY29tL29wZW4/aWQ9MEI1RlJKWHlpU0hZ
TWVtMW9VWEpWYXpNME4zYyZhdXRodXNlcj0w
', 'Amed1963', '28', 'IMAGE', 'https://drive.google.com/open?id=0B5FRJXyiSHYMem1oUXJVazM0N3c&authuser=0');
INSERT INTO message (conversation_id, sended_at, received_at, sender_nickname, receiver_nickname, type, content) VALUES('3', '2015-06-27 11:59:49 -0300', '2015-06-27 11:59:54 -0300', 'subtan', 'Amed1963', 'TEXT', 'Onde está Florence? Pergunto-lhe onde está Florence.');
INSERT INTO message (conversation_id, sended_at, received_at, sender_nickname, receiver_nickname, type, content) VALUES('3', '2015-06-27 11:59:59 -0300', '2015-06-27 12:00:09 -0300', 'subtan', 'Amed1963', 'TEXT', 'Foi só isso que conseguiu descobrir? A tortura pela ausência? Pois falhou. Florence era uma bobinha e não me faz falta.');
INSERT INTO message (conversation_id, sended_at, received_at, sender_nickname, receiver_nickname, type, content) VALUES('3', '2015-06-27 12:00:19 -0300', '2015-06-27 12:00:39 -0300', 'subtan', 'Amed1963', 'TEXT', 'É pena.');
INSERT INTO message (conversation_id, sended_at, received_at, sender_nickname, receiver_nickname, type, content) VALUES('3', '2015-06-27 12:00:59 -0300', '2015-06-27 12:01:39 -0300', 'Amed1963', 'subtan', 'TEXT', 'Medo? É esquisitíssimo! Medo de quem? De suas vítimas?');
INSERT INTO message (conversation_id, sended_at, received_at, sender_nickname, receiver_nickname, type, content) VALUES('3', '2015-06-27 12:02:19 -0300', '2015-06-27 12:03:39 -0300', 'subtan', 'Amed1963', 'TEXT', 'Ora! Sei bem, o que estou dizendo. Espelho não me falta.');
INSERT INTO message (conversation_id, sended_at, received_at, sender_nickname, receiver_nickname, type, content) VALUES('3', '2015-06-27 12:04:59 -0300', '2015-06-27 12:07:39 -0300', 'Amed1963', 'subtan', 'TEXT', 'Não sei de nada.');
INSERT INTO message (conversation_id, sended_at, received_at, sender_nickname, receiver_nickname, type, content) VALUES('3', '2015-06-27 12:10:19 -0300', '2015-06-27 12:15:39 -0300', 'Amed1963', 'subtan', 'TEXT', 'A porta está trancada.');
INSERT INTO message (conversation_id, sended_at, received_at, sender_nickname, receiver_nickname, type, content) VALUES('3', '2015-06-27 12:20:59 -0300', '2015-06-27 12:31:39 -0300', 'subtan', 'Amed1963', 'TEXT', '');
INSERT INTO multimedia (fingerprint, creator_nickname, message_id, type, server_url) VALUES('aHR0cHM6Ly9kcml2ZS5nb29nbGUuY29tL29wZW4/aWQ9MEI1RlJKWHlpU0hZ
TVlVTndUblJuU20xelRuYyZhdXRodXNlcj0w
', 'subtan', '36', 'IMAGE', 'https://drive.google.com/open?id=0B5FRJXyiSHYMYUNwTnRnSm1zTnc&authuser=0');
INSERT INTO message (conversation_id, sended_at, received_at, sender_nickname, receiver_nickname, type, content) VALUES('3', '2015-06-27 12:42:19 -0300', '2015-06-27 13:03:39 -0300', 'subtan', 'Amed1963', 'TEXT', '');
INSERT INTO multimedia (fingerprint, creator_nickname, message_id, type, server_url) VALUES('aHR0cHM6Ly9kcml2ZS5nb29nbGUuY29tL29wZW4/aWQ9MEI1RlJKWHlpU0hZ
TVFVTkxjVWd6VW01VWNHOCZhdXRodXNlcj0w
', 'subtan', '37', 'IMAGE', 'https://drive.google.com/open?id=0B5FRJXyiSHYMQUNLcUgzUm5UcG8&authuser=0');
INSERT INTO message (conversation_id, sended_at, received_at, sender_nickname, receiver_nickname, type, content) VALUES('3', '2015-06-27 13:24:59 -0300', '2015-06-27 14:07:39 -0300', 'subtan', 'Amed1963', 'TEXT', 'Não sou bem-educada.');
INSERT INTO message (conversation_id, sended_at, received_at, sender_nickname, receiver_nickname, type, content) VALUES('3', '2015-06-27 14:50:19 -0300', '2015-06-27 16:15:39 -0300', 'subtan', 'Amed1963', 'TEXT', 'Inês Serrano. Senhorita.');
INSERT INTO message (conversation_id, sended_at, received_at, sender_nickname, receiver_nickname, type, content) VALUES('3', '2015-06-27 17:40:59 -0300', '2015-06-27 20:31:39 -0300', 'Amed1963', 'subtan', 'TEXT', 'Queira perdoar-me: quem está pensando que eu sou?');
INSERT INTO message (conversation_id, sended_at, received_at, sender_nickname, receiver_nickname, type, content) VALUES('3', '2015-06-27 23:22:19 -0300', '2015-06-28 05:03:39 -0300', 'Amed1963', 'subtan', 'TEXT', 'Compreendo muito bem que minha presença a aborreça. E, se dependesse de mim, preferiria estar só. Tenho que por a minha vida em ordem e preciso de sossego. Mas tenho certeza de que nos acostumaremos um ao outro: não falo, quase. Não me movo, e faço pouco barulho. Apenas, se me atrevo a dar um conselho, será bom conservarmos entre nós uma extrema polidez. Será nossa melhor defesa.');
INSERT INTO message (conversation_id, sended_at, received_at, sender_nickname, receiver_nickname, type, content) VALUES('3', '2015-06-28 10:44:59 -0300', '2015-06-28 22:07:39 -0300', 'Amed1963', 'subtan', 'TEXT', 'É um equívoco engraçadíssimo. O carrasco: é boa! A senhora entrou, olhou para mim e pensou: é o carrasco. Que extravagância! O criado é um ridículo: deveria ter-nos apresentado. O carrasco! Eu sou Joseph Garcin, publicista e homem-de-letras. O fato é que estamos hospedados no mesmo estabelecimento. Senhora...');
INSERT INTO message (conversation_id, sended_at, received_at, sender_nickname, receiver_nickname, type, content) VALUES('3', '2015-06-29 09:30:19 -0300', '2015-06-30 08:15:39 -0300', 'subtan', 'Amed1963', 'TEXT', '');
INSERT INTO multimedia (fingerprint, creator_nickname, message_id, type, server_url) VALUES('aHR0cHM6Ly9kcml2ZS5nb29nbGUuY29tL29wZW4/aWQ9MEI1RlJKWHlpU0hZ
TWNXRlhaVE5EV2kxcVZrayZhdXRodXNlcj0w
', 'subtan', '43', 'IMAGE', 'https://drive.google.com/open?id=0B5FRJXyiSHYMcWFXZTNDWi1qVkk&authuser=0');
INSERT INTO message (conversation_id, sended_at, received_at, sender_nickname, receiver_nickname, type, content) VALUES('3', '2015-07-01 07:00:59 -0300', '2015-07-03 04:31:39 -0300', 'Amed1963', 'subtan', 'TEXT', 'Eu o serei por dois.');
INSERT INTO message (conversation_id, sended_at, received_at, sender_nickname, receiver_nickname, type, content) VALUES('3', '2015-07-05 02:02:19 -0300', '2015-07-08 21:03:39 -0300', 'Amed1963', 'subtan', 'TEXT', 'Espelho? Que droga! Tiraram daqui tudo quanto pudesse parecer-se com um espelho. Em todo caso, posso garantir-lhe que não tenho medo. Não considero levianamente a situação, e estou perfeitamente cônscio de sua gravidade. Mas não tenho medo.');
INSERT INTO message (conversation_id, sended_at, received_at, sender_nickname, receiver_nickname, type, content) VALUES('3', '2015-07-12 16:04:59 -0300', '2015-07-20 06:07:39 -0300', 'subtan', 'Amed1963', 'TEXT', 'Isso é com o senhor. Será que o senhor sai, de vez em quando, para um passeio?');
INSERT INTO message (conversation_id, sended_at, received_at, sender_nickname, receiver_nickname, type, content) VALUES('3', '2015-07-27 20:10:19 -0300', '2015-08-12 00:15:39 -0300', 'subtan', 'Amed1963', 'TEXT', 'O senhor? O senhor é o carrasco.');
INSERT INTO message (conversation_id, sended_at, received_at, sender_nickname, receiver_nickname, type, content) VALUES('3', '2015-08-27 04:20:59 -0300', '2015-09-26 12:31:39 -0300', 'Amed1963', 'subtan', 'TEXT', 'Muito bem. Perfeito. Pois é, derreteu-se o gelo. Quer dizer que me acha com cara de carrasco? Quer fazer o favor de me explicar como é que se reconhecem os carrascos?');
INSERT INTO message (conversation_id, sended_at, received_at, sender_nickname, receiver_nickname, type, content) VALUES('3', '2015-10-26 21:42:19 -0200', '2015-12-26 14:03:39 -0200', 'subtan', 'Amed1963', 'TEXT', 'Têm cara de quem tem medo.');
UPDATE contact SET ended_at = '2016-10-24 23:50:19 -0200', status = 'INACTIVE' WHERE id = 3;

-- Conversation type 4 - Conversation with file sharing

INSERT INTO message (conversation_id, sended_at, received_at, sender_nickname, receiver_nickname, type, content) VALUES('2', '2015-06-27 12:01:42 -0300', '2015-06-27 12:01:44 -0300', 'Risky Galaxy', 'Cutie Wolf', 'TEXT', '');
INSERT INTO multimedia (fingerprint, creator_nickname, message_id, type, server_url) VALUES('aHR0cHM6Ly9kcml2ZS5nb29nbGUuY29tL29wZW4/aWQ9MEI1RlJKWHlpU0hZ
TVVIbERNM2xKUnpKcVdXcyZhdXRodXNlcj0w
', 'Risky Galaxy', '50', 'IMAGE', 'https://drive.google.com/open?id=0B5FRJXyiSHYMUHlDM3lJRzJqWWs&authuser=0');
INSERT INTO message (conversation_id, sended_at, received_at, sender_nickname, receiver_nickname, type, content) VALUES('2', '2015-06-27 12:01:47 -0300', '2015-06-27 12:01:52 -0300', 'Risky Galaxy', 'Cutie Wolf', 'TEXT', 'Essa é a foto mais atual dela');
INSERT INTO message (conversation_id, sended_at, received_at, sender_nickname, receiver_nickname, type, content) VALUES('2', '2015-06-27 12:01:57 -0300', '2015-06-27 12:02:07 -0300', 'Risky Galaxy', 'Cutie Wolf', 'TEXT', 'Essa da foto?');
INSERT INTO message (conversation_id, sended_at, received_at, sender_nickname, receiver_nickname, type, content) VALUES('2', '2015-06-27 12:02:17 -0300', '2015-06-27 12:02:37 -0300', 'Risky Galaxy', 'Cutie Wolf', 'TEXT', '');
INSERT INTO multimedia (fingerprint, creator_nickname, message_id, type, server_url) VALUES('aHR0cHM6Ly9kcml2ZS5nb29nbGUuY29tL29wZW4/aWQ9MEI1RlJKWHlpU0hZ
TVNVNWhTbWxRYUdSc1VVRSZhdXRodXNlcj0w
', 'Risky Galaxy', '53', 'IMAGE', 'https://drive.google.com/open?id=0B5FRJXyiSHYMSU5hSmlQaGRsUUE&authuser=0');
INSERT INTO message (conversation_id, sended_at, received_at, sender_nickname, receiver_nickname, type, content) VALUES('2', '2015-06-27 12:02:57 -0300', '2015-06-27 12:03:37 -0300', 'Risky Galaxy', 'Cutie Wolf', 'TEXT', '');
INSERT INTO multimedia (fingerprint, creator_nickname, message_id, type, server_url) VALUES('aHR0cHM6Ly9kcml2ZS5nb29nbGUuY29tL29wZW4/aWQ9MEI1RlJKWHlpU0hZ
TUxUTnZSMTl4VVdoM01qQSZhdXRodXNlcj0w
', 'Risky Galaxy', '54', 'IMAGE', 'https://drive.google.com/open?id=0B5FRJXyiSHYMLTNvR19xUWh3MjA&authuser=0');
INSERT INTO message (conversation_id, sended_at, received_at, sender_nickname, receiver_nickname, type, content) VALUES('2', '2015-06-27 12:04:17 -0300', '2015-06-27 12:05:37 -0300', 'Cutie Wolf', 'Risky Galaxy', 'TEXT', 'Foi só isso que conseguiu descobrir? Como conseguiu essa foto?');
INSERT INTO message (conversation_id, sended_at, received_at, sender_nickname, receiver_nickname, type, content) VALUES('2', '2015-06-27 12:06:57 -0300', '2015-06-27 12:09:37 -0300', 'Cutie Wolf', 'Risky Galaxy', 'TEXT', '');
INSERT INTO multimedia (fingerprint, creator_nickname, message_id, type, server_url) VALUES('aHR0cHM6Ly9kcml2ZS5nb29nbGUuY29tL29wZW4/aWQ9MEI1RlJKWHlpU0hZ
TVVVNTRiR2RYZW1GUFZ6ZyZhdXRodXNlcj0w
', 'Cutie Wolf', '56', 'IMAGE', 'https://drive.google.com/open?id=0B5FRJXyiSHYMUU54bGdXemFPVzg&authuser=0');
INSERT INTO message (conversation_id, sended_at, received_at, sender_nickname, receiver_nickname, type, content) VALUES('2', '2015-06-27 12:12:17 -0300', '2015-06-27 12:17:37 -0300', 'Cutie Wolf', 'Risky Galaxy', 'TEXT', 'Ouve essa música');
INSERT INTO message (conversation_id, sended_at, received_at, sender_nickname, receiver_nickname, type, content) VALUES('2', '2015-06-27 12:22:57 -0300', '2015-06-27 12:33:37 -0300', 'Risky Galaxy', 'Cutie Wolf', 'TEXT', '');
INSERT INTO multimedia (fingerprint, creator_nickname, message_id, type, server_url) VALUES('aHR0cHM6Ly9kcml2ZS5nb29nbGUuY29tL29wZW4/aWQ9MEI1RlJKWHlpU0hZ
TWFqazRTelpGUTFCS2NqZyZhdXRodXNlcj0w
', 'Risky Galaxy', '58', 'IMAGE', 'https://drive.google.com/open?id=0B5FRJXyiSHYMajk4SzZFQ1BKcjg&authuser=0');
INSERT INTO message (conversation_id, sended_at, received_at, sender_nickname, receiver_nickname, type, content) VALUES('2', '2015-06-27 12:44:17 -0300', '2015-06-27 13:05:37 -0300', 'Risky Galaxy', 'Cutie Wolf', 'TEXT', '');
INSERT INTO multimedia (fingerprint, creator_nickname, message_id, type, server_url) VALUES('aHR0cHM6Ly9kcml2ZS5nb29nbGUuY29tL29wZW4/aWQ9MEI1RlJKWHlpU0hZ
TWRHaFdjR1ZWY1Y5dVNEUSZhdXRodXNlcj0w
', 'Risky Galaxy', '59', 'IMAGE', 'https://drive.google.com/open?id=0B5FRJXyiSHYMdGhWcGVVcV9uSDQ&authuser=0');
INSERT INTO message (conversation_id, sended_at, received_at, sender_nickname, receiver_nickname, type, content) VALUES('2', '2015-06-27 13:26:57 -0300', '2015-06-27 14:09:37 -0300', 'Risky Galaxy', 'Cutie Wolf', 'TEXT', '');
INSERT INTO multimedia (fingerprint, creator_nickname, message_id, type, server_url) VALUES('aHR0cHM6Ly9kcml2ZS5nb29nbGUuY29tL29wZW4/aWQ9MEI1RlJKWHlpU0hZ
TVpHZEJhM2R4UVV4YU5qQSZhdXRodXNlcj0w
', 'Risky Galaxy', '60', 'IMAGE', 'https://drive.google.com/open?id=0B5FRJXyiSHYMZGdBa3dxQUxaNjA&authuser=0');
INSERT INTO message (conversation_id, sended_at, received_at, sender_nickname, receiver_nickname, type, content) VALUES('2', '2015-06-27 14:52:17 -0300', '2015-06-27 16:17:37 -0300', 'Cutie Wolf', 'Risky Galaxy', 'TEXT', '');
INSERT INTO multimedia (fingerprint, creator_nickname, message_id, type, server_url) VALUES('aHR0cHM6Ly9kcml2ZS5nb29nbGUuY29tL29wZW4/aWQ9MEI1RlJKWHlpU0hZ
TVZFZENPRlZaZW13eVMwVSZhdXRodXNlcj0w
', 'Cutie Wolf', '61', 'IMAGE', 'https://drive.google.com/open?id=0B5FRJXyiSHYMVEdCOFVZemwyS0U&authuser=0');
INSERT INTO message (conversation_id, sended_at, received_at, sender_nickname, receiver_nickname, type, content) VALUES('2', '2015-06-27 17:42:57 -0300', '2015-06-27 20:33:37 -0300', 'Risky Galaxy', 'Cutie Wolf', 'TEXT', 'Que legal!');
INSERT INTO message (conversation_id, sended_at, received_at, sender_nickname, receiver_nickname, type, content) VALUES('2', '2015-06-27 23:24:17 -0300', '2015-06-28 05:05:37 -0300', 'Risky Galaxy', 'Cutie Wolf', 'TEXT', '');
INSERT INTO multimedia (fingerprint, creator_nickname, message_id, type, server_url) VALUES('aHR0cHM6Ly9kcml2ZS5nb29nbGUuY29tL2ZpbGUvZC8wQjVGUkpYeWlTSFlN
U0VVMlUwNWthRU4xT1djL2VkaXQ=
', 'Risky Galaxy', '63', 'IMAGE', 'https://drive.google.com/file/d/0B5FRJXyiSHYMSEU2U05kaEN1OWc/edit');
INSERT INTO message (conversation_id, sended_at, received_at, sender_nickname, receiver_nickname, type, content) VALUES('2', '2015-06-28 10:46:57 -0300', '2015-06-28 22:09:37 -0300', 'Cutie Wolf', 'Risky Galaxy', 'TEXT', 'Onde está Florence? Pergunto-lhe onde está Florence.');
INSERT INTO message (conversation_id, sended_at, received_at, sender_nickname, receiver_nickname, type, content) VALUES('2', '2015-06-29 09:32:17 -0300', '2015-06-30 08:17:37 -0300', 'Cutie Wolf', 'Risky Galaxy', 'TEXT', '');
INSERT INTO multimedia (fingerprint, creator_nickname, message_id, type, server_url) VALUES('aHR0cHM6Ly9kcml2ZS5nb29nbGUuY29tL29wZW4/aWQ9MEI1RlJKWHlpU0hZ
TVpHZEJhM2R4UVV4YU5qQSZhdXRodXNlcj0w
', 'Cutie Wolf', '65', 'IMAGE', 'https://drive.google.com/open?id=0B5FRJXyiSHYMZGdBa3dxQUxaNjA&authuser=0');


-- Conversation type 5 - More file than text

INSERT INTO message (conversation_id, sended_at, received_at, sender_nickname, receiver_nickname, type, content) VALUES('5', '2015-06-27 12:05:50 -0300', '2015-06-27 12:05:52 -0300', 'Risky Galaxy', 'Whown1969', 'TEXT', '');
INSERT INTO multimedia (fingerprint, creator_nickname, message_id, type, server_url) VALUES('aHR0cHM6Ly9kcml2ZS5nb29nbGUuY29tL29wZW4/aWQ9MEI1RlJKWHlpU0hZ
TVlraFdVRUZMYVhkRFUycyZhdXRodXNlcj0w
', 'Risky Galaxy', '66', 'IMAGE', 'https://drive.google.com/open?id=0B5FRJXyiSHYMYkhWUEFLaXdDU2s&authuser=0');
INSERT INTO message (conversation_id, sended_at, received_at, sender_nickname, receiver_nickname, type, content) VALUES('5', '2015-06-27 12:05:55 -0300', '2015-06-27 12:06:00 -0300', 'Risky Galaxy', 'Whown1969', 'TEXT', '');
INSERT INTO multimedia (fingerprint, creator_nickname, message_id, type, server_url) VALUES('aHR0cHM6Ly9kcml2ZS5nb29nbGUuY29tL29wZW4/aWQ9MEI1RlJKWHlpU0hZ
TVZIRkRNVVZLUlRoRlRUUSZhdXRodXNlcj0w
', 'Risky Galaxy', '67', 'IMAGE', 'https://drive.google.com/open?id=0B5FRJXyiSHYMVHFDMUVKRThFTTQ&authuser=0');
INSERT INTO message (conversation_id, sended_at, received_at, sender_nickname, receiver_nickname, type, content) VALUES('5', '2015-06-27 12:06:05 -0300', '2015-06-27 12:06:15 -0300', 'Risky Galaxy', 'Whown1969', 'TEXT', 'Essa é a foto mais atual dela');
INSERT INTO message (conversation_id, sended_at, received_at, sender_nickname, receiver_nickname, type, content) VALUES('5', '2015-06-27 12:06:25 -0300', '2015-06-27 12:06:45 -0300', 'Risky Galaxy', 'Risky Galaxy', 'TEXT', 'Que legal!');
INSERT INTO message (conversation_id, sended_at, received_at, sender_nickname, receiver_nickname, type, content) VALUES('5', '2015-06-27 12:07:05 -0300', '2015-06-27 12:07:45 -0300', 'Whown1969', 'Risky Galaxy', 'TEXT', '');
INSERT INTO multimedia (fingerprint, creator_nickname, message_id, type, server_url) VALUES('aHR0cHM6Ly9kcml2ZS5nb29nbGUuY29tL29wZW4/aWQ9MEI1RlJKWHlpU0hZ
TVpXWllaalIwUVROeE5FayZhdXRodXNlcj0w
', 'Whown1969', '70', 'IMAGE', 'https://drive.google.com/open?id=0B5FRJXyiSHYMZWZYZjR0QTNxNEk&authuser=0');
INSERT INTO message (conversation_id, sended_at, received_at, sender_nickname, receiver_nickname, type, content) VALUES('5', '2015-06-27 12:08:25 -0300', '2015-06-27 12:09:45 -0300', 'Whown1969', 'Risky Galaxy', 'TEXT', '');
INSERT INTO multimedia (fingerprint, creator_nickname, message_id, type, server_url) VALUES('aHR0cHM6Ly9kcml2ZS5nb29nbGUuY29tL29wZW4/aWQ9MEI1RlJKWHlpU0hZ
TVpuTk9hMHhOVkhkNFlVayZhdXRodXNlcj0w
', 'Whown1969', '71', 'IMAGE', 'https://drive.google.com/open?id=0B5FRJXyiSHYMZnNOa0xNVHd4YUk&authuser=0');
INSERT INTO message (conversation_id, sended_at, received_at, sender_nickname, receiver_nickname, type, content) VALUES('5', '2015-06-27 12:11:05 -0300', '2015-06-27 12:13:45 -0300', 'Whown1969', 'Risky Galaxy', 'TEXT', '');
INSERT INTO multimedia (fingerprint, creator_nickname, message_id, type, server_url) VALUES('aHR0cHM6Ly9kcml2ZS5nb29nbGUuY29tL29wZW4/aWQ9MEI1RlJKWHlpU0hZ
TU1VOTBWRko0ZVhOb2JHcyZhdXRodXNlcj0w
', 'Whown1969', '72', 'IMAGE', 'https://drive.google.com/open?id=0B5FRJXyiSHYMMU90VFJ4eXNobGs&authuser=0');
INSERT INTO message (conversation_id, sended_at, received_at, sender_nickname, receiver_nickname, type, content) VALUES('5', '2015-06-27 12:16:25 -0300', '2015-06-27 12:21:45 -0300', 'Whown1969', 'Risky Galaxy', 'TEXT', 'Ouve essa música');
INSERT INTO message (conversation_id, sended_at, received_at, sender_nickname, receiver_nickname, type, content) VALUES('5', '2015-06-27 12:27:05 -0300', '2015-06-27 12:37:45 -0300', 'Whown1969', 'Risky Galaxy', 'TEXT', 'Onde está Florence? Pergunto-lhe onde está Florence.');
INSERT INTO message (conversation_id, sended_at, received_at, sender_nickname, receiver_nickname, type, content) VALUES('5', '2015-06-27 12:48:25 -0300', '2015-06-27 13:09:45 -0300', 'Whown1969', 'Risky Galaxy', 'TEXT', 'Foi só isso que conseguiu descobrir? Como conseguiu essa foto?');
INSERT INTO message (conversation_id, sended_at, received_at, sender_nickname, receiver_nickname, type, content) VALUES('5', '2015-06-27 13:31:05 -0300', '2015-06-27 14:13:45 -0300', 'Risky Galaxy', 'Whown1969', 'TEXT', 'Essa da foto?');
INSERT INTO message (conversation_id, sended_at, received_at, sender_nickname, receiver_nickname, type, content) VALUES('5', '2015-06-27 14:56:25 -0300', '2015-06-27 16:21:45 -0300', 'Risky Galaxy', 'Whown1969', 'TEXT', '');
INSERT INTO multimedia (fingerprint, creator_nickname, message_id, type, server_url) VALUES('aHR0cHM6Ly9kcml2ZS5nb29nbGUuY29tL29wZW4/aWQ9MEI1RlJKWHlpU0hZ
TVZIaFNjWFpIV0RaUVVYTSZhdXRodXNlcj0w
', 'Risky Galaxy', '77', 'IMAGE', 'https://drive.google.com/open?id=0B5FRJXyiSHYMVHhScXZHWDZQUXM&authuser=0');
INSERT INTO message (conversation_id, sended_at, received_at, sender_nickname, receiver_nickname, type, content) VALUES('5', '2015-06-27 17:47:05 -0300', '2015-06-27 20:37:45 -0300', 'Risky Galaxy', 'Whown1969', 'TEXT', '');
INSERT INTO multimedia (fingerprint, creator_nickname, message_id, type, server_url) VALUES('aHR0cHM6Ly9kcml2ZS5nb29nbGUuY29tL29wZW4/aWQ9MEI1RlJKWHlpU0hZ
TVJXdHFjVUU0WmxGVU1sRSZhdXRodXNlcj0w
', 'Risky Galaxy', '78', 'IMAGE', 'https://drive.google.com/open?id=0B5FRJXyiSHYMRWtqcUE4ZlFUMlE&authuser=0');

-- Conversation type 6 - Conversation with only message sented by one person and never delived to target

INSERT INTO message (conversation_id, sended_at, received_at, sender_nickname, receiver_nickname, type, content) VALUES('6', '2015-06-27 12:09:59 -0300', NULL, 'Fromed1939', 'Amed1963', 'TEXT', 'A porta está trancada.');
INSERT INTO message (conversation_id, sended_at, received_at, sender_nickname, receiver_nickname, type, content) VALUES('6', '2015-06-27 12:10:09 -0300', NULL, 'Fromed1939', 'Amed1963', 'TEXT', 'Compreendo muito bem que minha presença a aborreça. E, se dependesse de mim, preferiria estar só. Tenho que por a minha vida em ordem e preciso de sossego. Mas tenho certeza de que nos acostumaremos um ao outro: não falo, quase. Não me movo, e faço pouco barulho. Apenas, se me atrevo a dar um conselho, será bom conservarmos entre nós uma extrema polidez. Será nossa melhor defesa.');
INSERT INTO message (conversation_id, sended_at, received_at, sender_nickname, receiver_nickname, type, content) VALUES('6', '2015-06-27 12:10:29 -0300', NULL, 'Fromed1939', 'Amed1963', 'TEXT', 'Espelho? Que droga! Tiraram daqui tudo quanto pudesse parecer-se com um espelho. Em todo caso, posso garantir-lhe que não tenho medo. Não considero levianamente a situação, e estou perfeitamente cônscio de sua gravidade. Mas não tenho medo.');
INSERT INTO message (conversation_id, sended_at, received_at, sender_nickname, receiver_nickname, type, content) VALUES('6', '2015-06-27 12:11:09 -0300', NULL, 'Fromed1939', 'Amed1963', 'TEXT', 'Não sei de nada.');
INSERT INTO message (conversation_id, sended_at, received_at, sender_nickname, receiver_nickname, type, content) VALUES('6', '2015-06-27 12:12:29 -0300', NULL, 'Fromed1939', 'Amed1963', 'TEXT', 'Muito bem. Perfeito. Pois é, derreteu-se o gelo. Quer dizer que me acha com cara de carrasco? Quer fazer o favor de me explicar como é que se reconhecem os carrascos?');
INSERT INTO message (conversation_id, sended_at, received_at, sender_nickname, receiver_nickname, type, content) VALUES('6', '2015-06-27 12:15:09 -0300', NULL, 'Fromed1939', 'Amed1963', 'TEXT', 'Eu o serei por dois.');
INSERT INTO message (conversation_id, sended_at, received_at, sender_nickname, receiver_nickname, type, content) VALUES('6', '2015-06-27 12:20:29 -0300', NULL, 'Fromed1939', 'Amed1963', 'TEXT', 'É um equívoco engraçadíssimo. O carrasco: é boa! A senhora entrou, olhou para mim e pensou: é o carrasco. Que extravagância! O criado é um ridículo: deveria ter-nos apresentado. O carrasco! Eu sou Joseph Garcin, publicista e homem-de-letras. O fato é que estamos hospedados no mesmo estabelecimento. Senhora...');
INSERT INTO message (conversation_id, sended_at, received_at, sender_nickname, receiver_nickname, type, content) VALUES('6', '2015-06-27 12:31:09 -0300', NULL, 'Fromed1939', 'Amed1963', 'TEXT', 'Queira perdoar-me: quem está pensando que eu sou?');
INSERT INTO message (conversation_id, sended_at, received_at, sender_nickname, receiver_nickname, type, content) VALUES('6', '2015-06-27 12:52:29 -0300', NULL, 'Fromed1939', 'Amed1963', 'TEXT', 'Medo? É esquisitíssimo! Medo de quem? De suas vítimas?');
