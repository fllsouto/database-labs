require 'base64'

def print_insert_query(fingerprint, creator, type, server_url)
  puts "INSERT INTO multimedia (fingerprint, creator_nickname, message_id, type, server_url) VALUES('#{fingerprint}', '#{creator}', NULL, '#{type}', '#{server_url}');";
end

photos = [
  {
    fingerprint: '' ,
    creator: 'fsouto',
    type: "IMAGE",
    url: "https://s3.amazonaws.com/uifaces/faces/twitter/sillyleo/128.jpg"
  },
  {
    fingerprint: '',
    creator: 'Risky Galaxy',
    type: "IMAGE",
    url: "https://s3.amazonaws.com/uifaces/faces/twitter/sauro/128.jpg"
  },
  {
    fingerprint: '',
    creator: 'Cutie Wolf',
    type: "IMAGE",
    url: "https://s3.amazonaws.com/uifaces/faces/twitter/rem/128.jpg"
  },
  {
    fingerprint: '',
    creator: 'subtan',
    type: "IMAGE",
    url: "https://s3.amazonaws.com/uifaces/faces/twitter/adellecharles/128.jpg"
  },  
  {
    fingerprint: '',
    creator: 'Bantais',
    type: "IMAGE",
    url: "https://s3.amazonaws.com/uifaces/faces/twitter/jina/128.jpg"
  },
  {
    fingerprint: '',
    creator: 'Werater',
    type: "IMAGE",
    url: "https://s3.amazonaws.com/uifaces/faces/twitter/mantia/128.jpg"
  },  
  {
    fingerprint: '',
    creator: 'Amed1963',
    type: "IMAGE",
    url: "https://s3.amazonaws.com/uifaces/faces/twitter/pixeliris/128.jpg"
  },  
  {
    fingerprint: '',
    creator: 'Bellyn',
    type: "IMAGE",
    url: "https://s3.amazonaws.com/uifaces/faces/twitter/timoni/128.jpg"
  },  
  {
    fingerprint: '',
    creator: 'Miscacer',
    type: "IMAGE",
    url: "https://s3.amazonaws.com/uifaces/faces/twitter/uxceo/128.jpg"
  },
  {
    fingerprint: '',
    creator: 'Becter',
    type: "IMAGE",
    url: "https://s3.amazonaws.com/uifaces/faces/twitter/allisongrayce/128.jpg"
  },
  {
    fingerprint: '',
    creator: 'Fromed1939',
    type: "IMAGE",
    url: "https://s3.amazonaws.com/uifaces/faces/twitter/sortino/128.jpg"
  },
  {
    fingerprint: '',
    creator: 'Whown1969',
    type: "IMAGE",
    url: "https://s3.amazonaws.com/uifaces/faces/twitter/motherfuton/128.jpg"
  }]

photos.each do |photo|
  photo[:fingerprint] = Base64.encode64(photo[:url])
end

photos.each do |photo|
  print_insert_query(photo[:fingerprint], photo[:creator], photo[:type], photo[:url])
end