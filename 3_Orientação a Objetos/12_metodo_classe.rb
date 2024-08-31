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

  #Metodo de Classe
  def self.discount_price(price, discount_percentage)
    price -= (price * (discount_percentage.to_f/ 100))
  end
end

game3 = Game.new("GTA V", "Ação", true, [2013, 2014, 2015, 2016, 2017, 2018], 150.00) 
puts game3
puts game3.techinical_sheet
puts Game.discount_price(game3.price, 20)