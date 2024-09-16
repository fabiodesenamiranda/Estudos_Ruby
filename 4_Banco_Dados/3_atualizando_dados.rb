require 'pg'


conn = PG.connect(
  dbname: 'fliperama',
  user: 'postgres',
  password: 'senamiranda',
  host: 'localhost',
  port: '5432'
  )

  id_registro = 1

  new_name = 'Street Fighter II'
  new_year = 1991
  new_score = 9.6

  update_query = "UPDATE jogo SET name = '#{new_name}', year = #{new_year}, sore = #{new_score} WHERE id = #{id_registro}"

  conn.exec (update_query)

  puts "Registro atualizado com sucesso!"
