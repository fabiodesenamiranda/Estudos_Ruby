# puts Math.class
# p Math.methods.sort

puts Math.sqrt(9)
puts Math.sin(5)
puts Math.cos(5)
puts Math::PI

#1 calculo área de um circulo
def calcular_area(raio)
  return Math::PI * raio ** 2
end

#2 Calculo do perimetro de um cirulo
def calcular_perimetro(raio)
  return 2 * Math::PI * raio
end

puts "Digite o raio do circulo: " 
  raio = gets.chomp.to_f
  area = calcular_area(raio)
  perimetro = calcular_perimetro(raio)

  puts "A área do circulo é: #{area.round(2)}"
  puts "O perimetro do circulo é: #{perimetro.round(2)}"