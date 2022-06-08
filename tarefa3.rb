#Receba uma string e imprima metade da mesma

puts "Digite algo para ver só a sua metade: "

string = gets.chomp

metade = (string.length.to_f / 2).ceil #arredonda para cima, em caso de nomes com caracteres totais ímpares

puts "A metade do nome inserido é: #{string[0...metade]}"