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

require 'base64'

@conversation = {
  id: 3,
  contact_id: 10,
  host: 'subtan',
  guest: 'Amed1963'
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

def insert_message_query(conversation_id, sended_at, received_at, sender, receiver, type, content)
  "INSERT INTO message (conversation_id, sended_at, received_at, sender_nickname, receiver_nickname, type, content) VALUES('#{conversation_id}', '#{sended_at}', '#{received_at}', '#{sender}', '#{receiver}', '#{type}', '#{content}');";
end

def insert_multimedia_query(fingerprint, creator_nickname, message_id, type, server_url)
  "INSERT INTO multimedia (fingerprint, creator_nickname, message_id, type, server_url) VALUES('#{fingerprint}', '#{creator_nickname}', '#{message_id}', '#{type}', '#{server_url}');";
end

############################
indx = 28

############################
current_time = Time.now
time_counter = 5

conversation = [
  ["subtan", "Amed1963", "Onde está Florence? Pergunto-lhe onde está Florence."],
  ["Amed1963", "subtan", "Não sei de nada."],
  ["subtan", "Amed1963", "Foi só isso que conseguiu descobrir? A tortura pela ausência? Pois falhou. Florence era uma bobinha e não me faz falta."],
  ["Amed1963", "subtan", "Queira perdoar-me: quem está pensando que eu sou?"],
  ["subtan", "Amed1963", "O senhor? O senhor é o carrasco."],
  ["Amed1963", "subtan", "É um equívoco engraçadíssimo. O carrasco: é boa! A senhora entrou, olhou para mim e pensou: é o carrasco. Que extravagância! O criado é um ridículo: deveria ter-nos apresentado. O carrasco! Eu sou Joseph Garcin, publicista e homem-de-letras. O fato é que estamos hospedados no mesmo estabelecimento. Senhora..."],
  ["subtan", "Amed1963", "Inês Serrano. Senhorita."],
  ["Amed1963", "subtan", "Muito bem. Perfeito. Pois é, derreteu-se o gelo. Quer dizer que me acha com cara de carrasco? Quer fazer o favor de me explicar como é que se reconhecem os carrascos?"],
  ["subtan", "Amed1963", "Têm cara de quem tem medo."],
  ["Amed1963", "subtan", "Medo? É esquisitíssimo! Medo de quem? De suas vítimas?"],
  ["subtan", "Amed1963", "Ora! Sei bem, o que estou dizendo. Espelho não me falta."],
  ["Amed1963", "subtan", "Espelho? Que droga! Tiraram daqui tudo quanto pudesse parecer-se com um espelho. Em todo caso, posso garantir-lhe que não tenho medo. Não considero levianamente a situação, e estou perfeitamente cônscio de sua gravidade. Mas não tenho medo."],
  ["subtan", "Amed1963", "Isso é com o senhor. Será que o senhor sai, de vez em quando, para um passeio?"],
  ["Amed1963", "subtan", "A porta está trancada."],
  ["subtan", "Amed1963", "É pena."],
  ["Amed1963", "subtan"],
  ["subtan", "Amed1963"],
  ["subtan", "Amed1963"],
  ["subtan", "Amed1963"],
  ["Amed1963", "subtan", "Compreendo muito bem que minha presença a aborreça. E, se dependesse de mim, preferiria estar só. Tenho que por a minha vida em ordem e preciso de sossego. Mas tenho certeza de que nos acostumaremos um ao outro: não falo, quase. Não me movo, e faço pouco barulho. Apenas, se me atrevo a dar um conselho, será bom conservarmos entre nós uma extrema polidez. Será nossa melhor defesa."],
  ["subtan", "Amed1963", "Não sou bem-educada."],
  ["Amed1963", "subtan", "Eu o serei por dois."]
].shuffle

multimedia = [  
  "https://drive.google.com/open?id=0B5FRJXyiSHYMYUNwTnRnSm1zTnc&authuser=0",
  "https://drive.google.com/open?id=0B5FRJXyiSHYMQUNLcUgzUm5UcG8&authuser=0",
  "https://drive.google.com/open?id=0B5FRJXyiSHYMcWFXZTNDWi1qVkk&authuser=0",
  "https://drive.google.com/open?id=0B5FRJXyiSHYMem1oUXJVazM0N3c&authuser=0"
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

time_ended = current_time + time_counter*2
puts "UPDATE contact SET ended_at = '#{time_ended}', status = 'INACTIVE' WHERE id = #{@conversation[:id]};"