require "faker"
require 'csv'



puts Faker.class
puts Faker::Name.class
puts Faker::Name.name
puts Faker::Name.first_name
puts Faker::Name.last_name
puts Faker::Music.instrument
puts Faker::Sports::Football.player

dados = []

20.times do
  name = Faker::Name.name
  email = Faker::Internet.email
  telefone = Faker::PhoneNumber.cell_phone
  dados << [name, email, telefone]
end

arquivo_csv = "data/faker.csv"
CSV.open(arquivo_csv, "w") do |csv|
  csv << ['Nome', 'Email', 'Telefone']
  dados.each do |dado|
    csv << dado
  end
end

puts "Dados salvos em #{arquivo_csv}"