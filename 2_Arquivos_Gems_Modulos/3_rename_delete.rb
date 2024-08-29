# 1 Renomeando arquivos

#File.rename("data/courses.txt", "data/programming_courses.txt")


# 2 Excluindo Arquivos
if File.exist?("data/filmes.txt")
  File.delete("data/filmes.txt")
end