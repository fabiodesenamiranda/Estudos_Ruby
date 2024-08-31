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

  protected
  def discount_price(discount_percentage)
    @price -= (@price * (discount_percentage.to_f/ 100))
  end
end


game1 = Game.new("Fifa 2018", "Esporte", true, [2018, 2019, 2020], 100.00)
puts game1
game1.send(:discount_price, 20)

