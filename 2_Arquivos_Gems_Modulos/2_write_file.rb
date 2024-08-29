# Alternativa 1

#File.open("data/courses.txt", "w") do |file|
#   file.puts "Criando arquivo de texto"
#   file.write "Hello World"
#   file.puts "olá mundo!"
#   file.puts "React"
#   file.puts "Python"
# end


#Alternativa 2

File.open("data/courses.txt", "a") do |file|
  puts "Qual curso deseja fazer"
  course = gets.chomp
  file.puts course
end