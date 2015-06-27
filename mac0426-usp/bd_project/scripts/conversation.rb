#conversa normal
#um conversa com troca de media
#outra conversa com troca de media e envio de arquivos duplicados
#conversa finalizada
#conversa com mensagens enviadas e nunca recebidas
#conversa com grande numero de mensagens em curto espaço de tempo

def print_insert_query(contact_id, host, guest, created_at)
  puts "INSERT INTO conversation (contact_id,host_nickname,guest_nickname,created_at) VALUES('#{contact_id}','#{host}' ,'#{guest}', '#{created_at}');";
end

contacts = [
  {
    contact_id: 5,
    host: 'fsouto',
    guest: 'Amed1963'
  },
  {
    contact_id: 6,
    host: 'Risky Galaxy',
    guest: 'Cutie Wolf'
  },
  {
    contact_id: 10,
    host: 'subtan',
    guest: 'Amed1963'
  },
  {
    contact_id: 17,
    host: 'Bellyn',
    guest: 'Risky Galaxy'
  },
  {
    contact_id: 9,
    host: 'Risky Galaxy',
    guest: 'Whown1969'
  },
  {
    contact_id: 12,
    host: 'Fromed1939',
    guest: 'Amed1963'
  }
]

time = 1
contacts.each do |contact|
  print_insert_query(contact[:contact_id], contact[:host], contact[:guest], Time.now + 50*time)
  time = time*2
end

