require 'csv'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# file = File.expand_path('../WebExtract2.csv', __FILE__)
# array = []
# CSV.parse(File.open(file, 'r:iso-8859-1:utf-8'){|f| f.read}, col_sep: ',', headers: true) do |row|
#    row = row.to_hash
#    #  row.each_pair do |key, value|
#    #      unless value.class == NilClass
#    #      value.strip
#    #  end
#    # end
#   Restaurant.create(row) if row["zipcode"] == "10005"
# end

Restaurant.create(camis: "12345148",
    dba: "Sweet Eats",
    boro: "2",
    building: "586",
    street: "Broad Ave",
    zipcode: "12341",
    phone: "7181230567",
    cuisinecode: "05",
    inspdate: Time.now.strftime("%Y-%m-%d %H:%M:%S"),
    action: "F",
    violcode: "06A",
    score: "10",
    currentgrade: "B",
    gradedate: Time.now.strftime("%Y-%m-%d %H:%M:%S"),
    recorddate: Time.now.strftime("%Y-%m-%d %H:%M:%S"))

Restaurant.create(camis: "12342248",
    dba: "More Eats",
    boro: "3",
    building: "3486",
    street: "Another Ave",
    zipcode: "12741",
    phone: "5161238887",
    cuisinecode: "03",
    inspdate: Time.now.strftime("%Y-%m-%d %H:%M:%S"),
    action: "C",
    violcode: "02B",
    score: "10",
    currentgrade: "A",
    gradedate: Time.now.strftime("%Y-%m-%d %H:%M:%S"),
    recorddate: Time.now.strftime("%Y-%m-%d %H:%M:%S"))

Restaurant.create(camis: "12342444",
    dba: "Cool Eats",
    boro: "1",
    building: "6",
    street: "5th St",
    zipcode: "10001",
    phone: "5169999999",
    cuisinecode: "01",
    inspdate: Time.now.strftime("%Y-%m-%d %H:%M:%S"),
    action: "B",
    violcode: "01F",
    score: "10",
    currentgrade: "C",
    gradedate: Time.now.strftime("%Y-%m-%d %H:%M:%S"),
    recorddate: Time.now.strftime("%Y-%m-%d %H:%M:%S"))





# row["camis"]
# row["dba"]
# row["camis"]
# row["camis"]
# row["camis"]
# row["camis"]
# row["camis"]
# row["camis"]
# row["camis"]
# row["camis"]



