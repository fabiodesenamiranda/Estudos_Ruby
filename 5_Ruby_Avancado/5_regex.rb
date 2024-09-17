phrase = "A linguagem ruby é divertida!"

p phrase.include?("gua") 
p phrase.start_with?("A")
p phrase.end_with?("divertida")  

# \d: Corresponde a qualquer dígito de 0 a 9.
# \D: Corresponde a qualquer caractere que não seja um dígito.
# \w: Corresponde a qualquer caractere alfanumérico (letras, dígitos e sublinhados).
# \W: Corresponde a qualquer caractere que não seja alfanumérico.
# \s: Corresponde a qualquer caractere de espaço em branco, como espaço, tabulação, nova linha, entre outros.
# \S: Corresponde a qualquer caractere que não seja espaço em branco.
# \b: Corresponde a uma fronteira de palavra.
# \B: Corresponde a qualquer posição que não seja uma fronteira de palavra.
# \A: Corresponde ao início da string.
# \Z: Corresponde ao final da string, ou ao final da linha se a opção multiline estiver habilitada.


#Utilizando Regex

p /T/.class
p phrase =~/r/
p phrase =~/a/
p phrase =~/gua/

string = "Olá mundo!"
pattern = /mundo/

if string =~pattern
  puts "A string contém a palavra 'mundo'"
else
  puts "A string não contém a palavra 'mundo'"
end