require 'csv'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

file = File.expand_path('../WebExtract2.csv', __FILE__)
array = []
# CSV.parse(File.open(file, 'r:iso-8859-1:utf-8'){|f| f.read}, col_sep: ',', headers: true) do |row|
#    row = row.to_hash
#     row.each_pair do |key, value|
#        unless value.class == NilClass
#      value.gsub!(/\s\s+/, " ")
#     end
#    end
#   Restaurant.create(row)
# end

Restaurant.create(
    camis: "12345148",
    dba: "Sweet Eats",
    boro: "2",
    building: "586",
    street: "Broad Ave",
    zipcode: "12341",
    phone: "7181230567",
    cuisine: "05",
    inspdate: Time.now.strftime("%Y-%m-%d %H:%M:%S"),
    action: "F",
    violcode: "06A",
    score: "10",
    currentgrade: "B",
    gradedate: Time.now.strftime("%Y-%m-%d %H:%M:%S"),
    recorddate: Time.now.strftime("%Y-%m-%d %H:%M:%S"))

