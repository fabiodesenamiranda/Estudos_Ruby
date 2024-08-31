#A palavra self é uma palavra reservada em Ruby que se refere ao objeto atual.

class Game
  puts "Criando novo jogo #{self}"

  def initialize
    @name = "Fifa 2018"
    @genre = "Esporte"
    @multiplayer = true
    @versions = [2018, 2019, 2020]
    @price = 100.00
  end

  def information 
    puts "O jogo é do genero #{@genre} e versões #{@versions}"
  end

  def techinical_sheet
    puts "Dados do Jogo"
    puts "Nome do Jogo #{@name}"
    puts "Gênero #{@genre}"
    puts "Preço #{@price}"
  end

  def to_s
    "#{@name} - #{@genre} - #{@multiplayer} - #{@versions}"
  end

  def details 
    puts "Detalhes do Jogos: #{self}"

  end
end

game = Game.new
puts game
puts game.details