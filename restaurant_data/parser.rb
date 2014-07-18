require 'csv'
require 'pry'
# , :encoding => 'ISO-8859-1'

large_array = []
CSV.foreach("WebExtract.csv", :quote_char => "\x00") do |row|
	counter = 0
	while counter % 15 == 0
		row.each do |att|
			large_array << att.tr!('"', '').to_s.split()
			counter += 1
			break if counter == 15
		end
	end
	p large_array
end


# arr = ["\"40356151\"", "\"BRUNOS ON THE BOULEVARD\"", "\"4\"", "\"88-25\"", "\"ASTORIA BOULEVARD\"", "\"11369\"", "\"7183350505\"", "\"03\"", "\"2014-05-02 00:00:00\"", "\"F\"", "\"06A\"", "\"10\"", "\"A\"", "\"2014-05-02 00:00:00\"", "\"2014-06-26 06:01:10.283000000\""]
# bigassarray = []
# for i in arr
# 	prep = []
# 	prep << i.tr!('"', '')
# 	bigassarray << prep
# end
#  p bigassarray


