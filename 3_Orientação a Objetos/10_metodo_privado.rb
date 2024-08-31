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

  private 
  def apply_discount(discount_percentage)
    @price -= (@price * discount_percentage / 100)
  end
end

public
def apply_valor_discount
  apply_discount(30)
end

game1 = Game.new("Mario", "Aventura", true, [2018, 2019, 2020], 100.00)
puts game1
puts game1.price
puts game1.apply_valor_discount
puts game1.price
