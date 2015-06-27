# encoding: utf-8

#conversa normal
#um conversa com troca de media
#outra conversa com troca de media e envio de arquivos duplicados
#conversa finalizada
#conversa com mensagens enviadas e nunca recebidas
#conversa com grande numero de mensagens em curto espaço de tempo

#message
# id                  SERIAL      NOT NULL,
# conversation_id     INTEGER     NOT NULL,
# sended_at           TIMESTAMP   NOT NULL,
# received_at         TIMESTAMP,
# sender_nickname     VARCHAR(30) NOT NULL,
# receiver_nickname   VARCHAR(30) NOT NULL,
# type                VARCHAR(30) NOT NULL,
# content             TEXT,
# PRIMARY KEY (id),
# FOREIGN KEY (conversation_id) REFERENCES conversation(id)

# CREATE TABLE multimedia(
#   id                  SERIAL      NOT NULL,
#   fingerprint         TEXT        NOT NULL,
#   creator_nickname    VARCHAR(30) NOT NULL,
#   message_id          INTEGER     ,
#   type                VARCHAR(20) NOT NULL,
#   server_url          TEXT        NOT NULL,
#   PRIMARY KEY (id),
#   FOREIGN KEY (creator_nickname) REFERENCES people(nickname)
# );

require 'base64'

@conversation = {
  id: 2,
  contact_id: 6,
  host: 'Risky Galaxy',
  guest: 'Cutie Wolf'
}

def message_template
  {
    id: 0,
    conversation_id: @conversation[:id],
    sended_at: 0,
    received_at: 0,
    sender: ""       ,
    receiver: ""    ,
    type: 'TEXT'  ,
    content: ""
  }
end

def format_output message
  "(#{message[:sender]} -> #{message[:receiver]} : #{Time.at(message[:sended_at])} -> #{Time.at(message[:received_at])}) \n -#{message[:content]}\n\n"
end

def insert_message_query(conversation_id, sended_at, received_at, sender, receiver, type, content)
  "INSERT INTO message (conversation_id, sended_at, received_at, sender_nickname, receiver_nickname, type, content) VALUES('#{conversation_id}', '#{sended_at}', '#{received_at}', '#{sender}', '#{receiver}', '#{type}', '#{content}');";
end

def insert_multimedia_query(fingerprint, creator_nickname, message_id, type, server_url)
  "INSERT INTO multimedia (fingerprint, creator_nickname, message_id, type, server_url) VALUES('#{fingerprint}', '#{creator_nickname}', '#{message_id}', '#{type}', '#{server_url}');";
end

############################
indx = 50

############################
current_time = Time.now
time_counter = 5

conversation = [
  ["Cutie Wolf", "Risky Galaxy", "Onde está Florence? Pergunto-lhe onde está Florence."],
  ["Risky Galaxy", "Cutie Wolf", "Essa da foto?"],
  ["Cutie Wolf", "Risky Galaxy", "Foi só isso que conseguiu descobrir? Como conseguiu essa foto?"],
  ["Risky Galaxy", "Cutie Wolf", "Essa é a foto mais atual dela"],
  ["Cutie Wolf", "Risky Galaxy", "Ouve essa música"],
  ["Risky Galaxy", "Cutie Wolf"],
  ["Risky Galaxy", "Cutie Wolf"],
  ["Risky Galaxy", "Cutie Wolf"],
  ["Cutie Wolf", "Risky Galaxy"],
  ["Cutie Wolf", "Risky Galaxy"],
  ["Cutie Wolf", "Risky Galaxy"],
  ["Risky Galaxy", "Cutie Wolf"],
  ["Risky Galaxy", "Cutie Wolf"],
  ["Risky Galaxy", "Cutie Wolf"],
  ["Risky Galaxy", "Cutie Wolf"],
  ["Risky Galaxy", "Cutie Wolf", "Que legal!"]
].shuffle

multimedia = [  
  "https://drive.google.com/file/d/0B5FRJXyiSHYMSEU2U05kaEN1OWc/edit",
  "https://drive.google.com/open?id=0B5FRJXyiSHYMZGdBa3dxQUxaNjA&authuser=0",
  "https://drive.google.com/open?id=0B5FRJXyiSHYMZGdBa3dxQUxaNjA&authuser=0",
  "https://drive.google.com/open?id=0B5FRJXyiSHYMUHlDM3lJRzJqWWs&authuser=0",
  "https://drive.google.com/open?id=0B5FRJXyiSHYMajk4SzZFQ1BKcjg&authuser=0",
  "https://drive.google.com/open?id=0B5FRJXyiSHYMdGhWcGVVcV9uSDQ&authuser=0",
  "https://drive.google.com/open?id=0B5FRJXyiSHYMLTNvR19xUWh3MjA&authuser=0",
  "https://drive.google.com/open?id=0B5FRJXyiSHYMSU5hSmlQaGRsUUE&authuser=0",
  "https://drive.google.com/open?id=0B5FRJXyiSHYMVEdCOFVZemwyS0U&authuser=0",
  "https://drive.google.com/open?id=0B5FRJXyiSHYMUU54bGdXemFPVzg&authuser=0"
].shuffle
formated_insert = []

conversation.each do |msg|
  multimedia_insert   = nil
  message             = message_template
  message[:sender]    = msg[0]
  message[:receiver]  = msg[1]
  if msg[2].nil? and !multimedia.empty?
    file              = multimedia.pop
    fingerprint       = Base64.encode64(file)
    creator_nickname  = message[:sender]
    message_id        = indx
    type              = "IMAGE"
    server_url        = file

    multimedia_insert = insert_multimedia_query(fingerprint, creator_nickname, message_id, type, server_url)
  else
    message[:content] = msg[2]
  end

  message[:sended_at]   = current_time + time_counter
  message[:received_at] = current_time + time_counter + time_counter/2
  message[:id]          = indx
  time_counter          = time_counter*2
  indx                  = indx + 1
  formated_insert.push(insert_message_query(message[:conversation_id], message[:sended_at], message[:received_at], message[:sender], message[:receiver], message[:type], message[:content]))
  formated_insert.push(multimedia_insert) if !multimedia_insert.nil?
end

formated_insert.each do |insert| 
  puts insert
end