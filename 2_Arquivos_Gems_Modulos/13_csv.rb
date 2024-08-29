require 'csv'

# Escrevendo dados em csv

CSV.open('data/example.csv', "w") do |csv|
csv << ['Nome', 'Idade', 'Cidade']
csv << ['Pedro', '23', 'São Paulo']
csv << ['Maria', '25', 'Rio de Janeiro']
csv << ['João', '21', 'Curitiba']
csv << ['Ana', '22', 'Belo Horizonte']

end

# Lendo dados de um arquivo csv
CSV.foreach('data/example.csv', headers: true) do |row|
  nome = row["Nome"]
  idade = row["Idade"]
  cidade = row["Cidade"]
  puts "Nome: #{nome}, Idade: #{idade}, Cidade: #{cidade}"
end