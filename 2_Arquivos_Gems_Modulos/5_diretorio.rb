puts Dir.pwd


# 2 Criando Diretorios
#Dir.mkdir "teste"


#3 Lista arquivos e pastas
puts Dir.glob "*"
puts Dir.glob "*.rb"
Dir.glob("*").each do |file|
  puts file
end

Dir.chdir "data"
puts Dir.pwd