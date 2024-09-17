require 'active_record'

#1. Configuração da conexão

ActiveRecord::Base.establish_connection(
  adapter: 'postgresql',
  host: 'localhost',
  username: 'postgres',
  password: 'senamiranda',
  database: 'fliperama'
)

#2 Criação da tabela

ActiveRecord::Schema.define do
  create_table :users do |t|
    t.string :nome
    t.string :email
  end
end

#3 Definição de modelo

class User < ActiveRecord::Base

end

user = User.new(nome: 'João', email: 'joao@email.com')
user.save 

#4 Recuperando dados
users = User.all 
users.each do |user|
  puts "Nome: #{user.nome} - Email: #{user.email}"
end