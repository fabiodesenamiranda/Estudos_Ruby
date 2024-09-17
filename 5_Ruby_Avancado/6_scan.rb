string = "A linguagem Ruby é poderosa e versatil. Ruby é divertida de aprender."
pattern = /Ruby/

results = string.scan(pattern)

puts "O padrão 'Ruby' foi encontrado #{results.length} vezes na string"
puts "As ocorrências encontradas foram: #{results.join(', ')}"

string2 = "A OpenAI lançou o GPT-3 em 2020 e o GPT-4 em 2022."

numbers = string2.scan(/\d+/)
puts "Os números encontrados na string são: #{numbers.join(', ')}"