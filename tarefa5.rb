#Leia um número inteiro que representa um código de DD para discagem interurbana. Em seguida, informe à qual cidade o DDD pertence, considerando a tabela abaixo:

    puts "Digite o ddd"
    ddd = gets.chomp


dddCidades = {
    "61" => "Brasília",
    "71" => "Salvador",
    "11" => "São Paulo",
    "21" => "Rio de Janeiro",
    "32" => "Juiz de fora",
    "19" => "Campinas"
}

if dddCidades.include?(ddd)
    puts "DDD de #{dddCidades.fetch(ddd)}"
else
    puts "DDD não cadastrado"
    requisitarDDD()
end
