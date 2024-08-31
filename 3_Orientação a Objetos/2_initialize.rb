class Game
  def initialize
    puts "Criando novo jogo"
    @name = "Fifa 2018"
    @genre = "Esporte"
    @multiplayer = true
    @versions = [2018, 2019, 2020]
    @price = 100.00
  end
end

game1 = Game.new
puts game1
p game1