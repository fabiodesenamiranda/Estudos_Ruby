
class Game
  
  # attr_reader :name, :genre, :price
  # attr_writer :name, :genre, :price
  attr_accessor :name, :genre, :price
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
end

game = Game.new
p game.name
p game.name="Residente Evil 7"
p game.name


