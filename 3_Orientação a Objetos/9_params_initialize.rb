class Game
  
  attr_accessor :name, :genre, :price
  def initialize (name, genre, multiplayer, versions, price)
    @name = name
    @genre = genre
    @multiplayer = multiplayer
    @versions = versions
    @price = price
  end

  def to_s
    "#{@name} - #{@genre} - #{@multiplayer} - #{@versions}"
  end

  def techinical_sheet
    puts "Dados do Jogo"
    puts "Nome do Jogo #{@name}"
    puts "Gênero #{@genre}"
    puts "Preço #{@price}"

  end
end

game1 = Game.new("Fifa 2018", "Esporte", true, [2018, 2019, 2020], 100.00)
puts game1
game2 = Game.new("Residente Evil 7", "Terror", false, [2017], 200.00)
puts game2
game3 = Game.new("GTA V", "Ação", true, [2013, 2014, 2015, 2016, 2017, 2018], 150.00) 
puts game3
puts game3.techinical_sheet