class Game
  def initialize
    puts "Criando novo jogo"
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
end

game = Game.new

puts game.information
puts game.techinical_sheet
