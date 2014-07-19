require 'csv'
array_hashes  = []

#This converts the csv into an array of hashes with the headers as hashes

CSV.parse(File.open('WebExtract2.csv', 'r:iso-8859-1:utf-8'){|f| f.read}, col_sep: ',', headers: true) do |row|
	 row = row.to_hash 
	  row.each_pair do |key, value| 
	  	 unless value.class == NilClass
		 value.gsub!(/\s\s+/, " ")
		end
	 end
	array << row
	puts array[-1]
end
