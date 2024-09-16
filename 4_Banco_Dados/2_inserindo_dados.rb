require 'pg'


conn = PG.connect(
  dbname: 'fliperama',
  user: 'postgres',
  password: 'senamiranda',
  host: 'localhost',
  port: '5432'
  )

registros = [
  {name: 'Street Fighter', year: 1987, sore: 10.0},
  {name: 'Mortal Kombat', year: 1992, sore: 9.5},
]

registros.each do |registro|
  name = registro[:name]
  year = registro[:year]
  score = registro[:sore]

  insert_query = "INSERT INTO jogo (name, year, sore) VALUES ('#{name}', #{year}, #{score})"

  conn.exec(insert_query)

end

puts "Registros inseridos com sucesso!"
conn.close