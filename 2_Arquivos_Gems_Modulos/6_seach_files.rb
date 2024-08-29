# # Alternativa 1

# def search(key)
#   Dir.glob("data/*.txt") do |file|
#     f = File.open(file)
#     f.each_with_index do |line, index|
#       if line.include? key
#         return file, index
#       end
#     end
#     f.close
#   end
# end


# Alternativa 2
 def search(key)
   result = {}
   Dir.glob("data/*.txt") do |file|
    f = File.open(file)
    f.each_with_index do |line, index|
      if line.include?(key)
        result[index + 1 ] = file
      end
    end
    f.close
  end
  result
end   

puts "Busca palavras em arquivos"
puts "Digite a palavra a ser buscada: "
key = gets.chomp

# filename, linenumber = search(key)
# puts "Arquivo: #{filename} Linnha: #{linenumber + 1}"

result = search
if result..length > 0
  for key in value in result puts "Arquivo #{value} Linha #{key}"
  end
else 
  puts "Nada encontrado"
end
