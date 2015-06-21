invites = [
  {
    host: 'fsouto', 
    info:[
      {guest: 'Werater' , status: 'REFUSED'},
      {guest:'Cutie Wolf', status:'WAITING'},
      {guest: 'Bantais', status: 'ACCEPTED'},
      {guest: 'Fromed1939', status: 'ACCEPTED'},
      {guest: 'Amed1963', status: 'ACCEPTED'}
    ]
  },
  {
    host: 'Risky Galaxy', 
    info:[
      {guest: 'Cutie Wolf', status: 'ACCEPTED'},
      {guest:'subtan', status:'WAITING'},
      {guest: 'Bantais', status: 'ACCEPTED'},
      {guest: 'Whown1969', status: 'ACCEPTED'}
    ]
  },
  {
    host: 'Cutie Wolf', 
    info:[
    ]
  },
  {
    host: 'subtan', 
    info:[
      {guest: 'Amed1963', status: 'ACCEPTED'}
    ]
  },
  {
    host: 'Bantais', 
    info:[
      {guest: 'Fromed1939', status: 'ACCEPTED'}
    ]
  },
  {
    host: 'Fromed1939', 
    info:[
      {guest: 'Amed1963', status: 'ACCEPTED'}
    ]
  },
  {
    host: 'Werater', 
    info:[
      {guest:'Amed1963', status:'WAITING'},
      {guest: 'Whown1969', status: 'ACCEPTED'}
    ]
  },
  {
    host: 'Amed1963', 
    info:[
      {guest: 'Bellyn' , status: 'REFUSED'},
      {guest: 'Becter' , status: 'REFUSED'}
    ]
  },
  {
    host: 'Bellyn', 
    info:[
      {guest: 'Risky Galaxy', status: 'ACCEPTED'},
      {guest:'subtan', status:'WAITING'},
      {guest: 'Fromed1939' , status: 'REFUSED'},
      {guest: 'Whown1969' , status: 'REFUSED'},
      {guest:'Becter', status:'WAITING'}
    ]
  },
  {
    host: 'Whown1969', 
    info:[
    ]
    },
  {
    host: 'Miscacer', 
    info:[
      {guest: 'Cutie Wolf' , status: 'REFUSED'},
      {guest: 'subtan' , status: 'REFUSED'},
      {guest: 'Becter' , status: 'REFUSED'}
    ]
  },
  {
    host: 'Becter', 
    info:[
    ]
  }
]

inv_counter = {accepted: 0, waiting: 0, refused: 0}
inv_total = 0
host_counter = 0
indx_counter = 1;
invites.each do |invite|
  host = invite[:host]
  info = invite[:info]
  if !info.empty?
    puts "-- Host : #{host}"
    host_counter = host_counter + 1
    info.each do |invited|
      guest = invited[:guest]
      status = invited[:status]
      inv_counter[status.downcase.to_sym] = inv_counter[status.downcase.to_sym] + 1 
      inv_total = inv_total + 1
      # puts "Guest : #{guest} -- Status : #{status}"
      contact_status = (status == "ACCEPTED") ? "ACTIVE" : nil
      contact_status ||= (status == "WAITING") ? "WAITING" : nil
      contact_status ||= "INACTIVE"
      accepted_at = Time.now + indx_counter*20
      ended_at = (contact_status == "INACTIVE") ? (accepted_at + 100) : nil
      puts "INSERT INTO invitation (status,invited_at,guest_nickname) VALUES('#{status}','#{accepted_at}' ,'#{guest}');";
      if !ended_at.nil?
        puts "INSERT INTO contacts (invitation_id,host_nickname,guest_nickname,status,ended_at) VALUES('#{indx_counter}', '#{host}', '#{guest}', '#{contact_status}', '#{ended_at}');"
      else
        puts "INSERT INTO contacts (invitation_id,host_nickname,guest_nickname,status,ended_at) VALUES('#{indx_counter}', '#{host}', '#{guest}', '#{contact_status}', NULL);"
      end
      indx_counter = indx_counter + 1
    end
      puts "\n\n"
  else
    # puts "Host without invites"
  end
  # puts "#"*80
end

# puts "Host quantitt : #{host_counter}"
# puts "Invites total  : #{inv_total}"
# puts "Accepted  : #{inv_counter[:accepted]}"
# puts "Waiting  : #{inv_counter[:waiting]}"
# puts "Refused  : #{inv_counter[:refused]}"