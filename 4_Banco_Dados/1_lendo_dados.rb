require 'pg'


conn = PG.connect(
  dbname: 'fliperama',
  user: 'postgres',
  password: 'senamiranda',
  host: 'localhost',
  port: '5432'
  )


  query = 'SELECT * FROM jogo'

  begin 
    result = conn.exec(query)
    result.each do |row|
      puts "ID: #{row['id']} - Nome: #{row['nome']} - Ano: #{row['ano']} - Score: #{row['score']}"
    end
  ensure
    conn.close if conn
  end
