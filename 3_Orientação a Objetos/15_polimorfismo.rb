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

class DownloadableGame < Game
  attr_accessor :download_size

  def initialize(name, genre, multiplayer, versions, price, download_size)
    super(name, genre, multiplayer, versions, price)
    @download_size = download_size
  end

  def techinical_sheet
    super # Chama o método da classe pai
    puts "Tamanho do Download #{@download_size} GB"
  end
end

game1 = Game.new("Fifa 2018", "Esporte", true, [2018, 2019, 2020], 100.00)
puts game1

game2 = DownloadableGame.new("Call of Duty", "Ação", true, [2018, 2019, 2020], 200.00, 50)
puts game2
puts game2.download_size
puts game2.techinical_sheet
