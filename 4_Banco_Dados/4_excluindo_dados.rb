require 'pg'


conn = PG.connect(
  dbname: 'fliperama',
  user: 'postgres',
  password: 'senamiranda',
  host: 'localhost',
  port: '5432'
  )

id_regisgtro = 2

delete_query = "DELETE FROM jogo WHERE id = #{id_regisgtro }"
conn.exec(delete_query)

puts "Registro excluído com sucesso!"

conn.close