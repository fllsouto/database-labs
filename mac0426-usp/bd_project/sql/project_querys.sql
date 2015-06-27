-- Retorna a descrição completa do usuario com mais mensagens enviadas 

SELECT 
  profile.pname AS "First Name", 
  profile.mname AS "Middle Name", 
  profile.lname AS "Last Name", 
  profile.nickname AS "Nickname", 
  profile.email AS "E-mail",
  profile.count AS "Total Messages",
  multimedia.server_url AS "Photo Url"
FROM 
  (SELECT *
    FROM people
    INNER JOIN (
      SELECT 
        sender_nickname,
        COUNT(*)
      FROM 
        message
      GROUP BY 
        message.sender_nickname 
      ORDER BY count desc 
      LIMIT 1
    ) AS total_message
    ON 
      people.nickname = total_message.sender_nickname
  ) as profile
INNER JOIN 
  multimedia
ON 
  profile.nickname = multimedia.creator_nickname
WHERE 
  multimedia.message_id IS NULL; 

-- Retorna a descricao completa dos usuarios que mais tiveram convites rejeitados, em ordem decrescente 

SELECT
  profile.pname AS "First Name", 
  profile.mname AS "Middle Name", 
  profile.lname AS "Last Name", 
  profile.nickname AS "Nickname", 
  profile.email AS "E-mail",
  refused_users.invites AS "Refused Invites"
FROM
  people as profile
INNER JOIN(
  SELECT 
    count(*) AS invites,
    host_nickname 
  FROM
    contact
  INNER JOIN (
    SELECT
      * 
    FROM 
      invitation 
    WHERE 
      status = 'REFUSED'
  ) AS refused_invites
  ON 
    contact.invitation_id = refused_invites.id 
  GROUP BY
    host_nickname
  ORDER BY
    invites desc
) AS refused_users
ON
  profile.nickname = refused_users.host_nickname;

-- Retorna a conversa com a maior quantidade de imagens trocadas, 
-- o nickname do criador, a mensagem e a impressao digital do arquivo
SELECT
  messages.conversation_id AS "Origin Conversation",
  multimedia.message_id AS "Message",
  multimedia.creator_nickname AS "Creator",
  multimedia.type AS "File Type",
  multimedia.fingerprint AS "Fingerprint"
FROM 
  multimedia
INNER JOIN
(
  SELECT
    id,
    top_conversation.conversation_id AS conversation_id
  FROM
    message
  INNER JOIN(
    SELECT 
      COUNT(*),
      conversation_id 
    FROM 
      message 
    WHERE 
      content = ''
    GROUP BY
      conversation_id
    LIMIT 1
  ) AS top_conversation
  ON
    message.conversation_id = top_conversation.conversation_id
  WHERE 
    content = ''
) AS messages
ON 
  multimedia.message_id = messages.id;