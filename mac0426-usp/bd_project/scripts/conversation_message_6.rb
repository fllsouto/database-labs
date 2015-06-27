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

@conversation = {
  id: 6,
  contact_id: 12,
  host: 'Fromed1939',
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

def format_output message
  "(#{message[:sender]} -> #{message[:receiver]} : #{Time.at(message[:sended_at])} -> #{Time.at(message[:received_at])}) \n -#{message[:content]}\n\n"
end

def print_insert_query(conversation_id, sended_at, received_at, sender, receiver, type, content)
  if received_at == 'NULL'
    puts "INSERT INTO message (conversation_id, sended_at, received_at, sender_nickname, receiver_nickname, type, content) VALUES('#{conversation_id}', '#{sended_at}', #{received_at}, '#{sender}', '#{receiver}', '#{type}', '#{content}');";
else
    puts "INSERT INTO message (conversation_id, sended_at, received_at, sender_nickname, receiver_nickname, type, content) VALUES('#{conversation_id}', '#{sended_at}', '#{received_at}', '#{sender}', '#{receiver}', '#{type}', '#{content}');";
end
end

current_time = Time.now
time_counter = 10

conversation = [
  ["Fromed1939", "Amed1963", "Não sei de nada."],
  ["Fromed1939", "Amed1963", "Queira perdoar-me: quem está pensando que eu sou?"],
  ["Fromed1939", "Amed1963", "É um equívoco engraçadíssimo. O carrasco: é boa! A senhora entrou, olhou para mim e pensou: é o carrasco. Que extravagância! O criado é um ridículo: deveria ter-nos apresentado. O carrasco! Eu sou Joseph Garcin, publicista e homem-de-letras. O fato é que estamos hospedados no mesmo estabelecimento. Senhora..."],
  ["Fromed1939", "Amed1963", "Muito bem. Perfeito. Pois é, derreteu-se o gelo. Quer dizer que me acha com cara de carrasco? Quer fazer o favor de me explicar como é que se reconhecem os carrascos?"],
  ["Fromed1939", "Amed1963", "Medo? É esquisitíssimo! Medo de quem? De suas vítimas?"],
  ["Fromed1939", "Amed1963", "Espelho? Que droga! Tiraram daqui tudo quanto pudesse parecer-se com um espelho. Em todo caso, posso garantir-lhe que não tenho medo. Não considero levianamente a situação, e estou perfeitamente cônscio de sua gravidade. Mas não tenho medo."],
  ["Fromed1939", "Amed1963", "A porta está trancada."],
  ["Fromed1939", "Amed1963", "Compreendo muito bem que minha presença a aborreça. E, se dependesse de mim, preferiria estar só. Tenho que por a minha vida em ordem e preciso de sossego. Mas tenho certeza de que nos acostumaremos um ao outro: não falo, quase. Não me movo, e faço pouco barulho. Apenas, se me atrevo a dar um conselho, será bom conservarmos entre nós uma extrema polidez. Será nossa melhor defesa."],
  ["Fromed1939", "Amed1963", "Eu o serei por dois."]
].shuffle
formated_conversation = []

conversation.each do |msg|
  message             = message_template
  message[:sender]    = msg[0]
  message[:receiver]  = msg[1]
  message[:content]   = msg[2]
  message[:sended_at] = current_time + time_counter
  message[:received_at] = 'NULL'
  time_counter        = time_counter*2
  indx                = indx + 1
  formated_conversation.push(message)
end

formated_conversation.each do |msg| 
  print_insert_query(msg[:conversation_id], msg[:sended_at], msg[:received_at], msg[:sender], msg[:receiver], msg[:type], msg[:content])
end