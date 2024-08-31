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

  def to_s
    "#{@name} - #{@genre} - #{@multiplayer} - #{@versions}"
  end

  def name
    @name
  end

  def genre
    @genre
  end

  def multiplayer
    @multiplayer
  end

  def versions  
    @versions
  end

  def price   
    @price
  end
end

game = Game.new
puts game.genre, game.multiplayer, game.versions, game.price, game.name
