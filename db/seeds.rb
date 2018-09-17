require 'csv'


filename = Rails.root.join('ubs.csv') 
counter = 0

FastCSV.foreach(filename, headers: true) do |row|
	entrie = Entrie.create( name: row['nom_estab'], address: row['dsc_endereco'], city: row['dsc_cidade'], phone: row['dsc_telefone']) 
    entrie.geocodes.create( lat: row['vlr_latitude'], long: row['vlr_longitude'] )
    entrie.update(latitude: entrie.geocodes.first.lat, longitude: entrie.geocodes.first.long)
    entrie.scores.create( size: row['dsc_estrut_fisic_ambiencia'], adaptation_for_seniors: row['dsc_adap_defic_fisic_idosos'], medical_equipment: row['dsc_equipamentos'], medicine: row['dsc_medicamentos'] )

	counter+= 1 
	puts "#{counter} usb - object created! "
end

puts "Imported #{counter} usbs"
