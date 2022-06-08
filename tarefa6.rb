#Faça um programa que, dado um número a partir do qual deve-se começar a contagem regressiva, imprima na tela a contagem regressiva desse número até 0. Ao final da contagem, imprima a mensagem KABUM.


def solicitarNumero()
    puts "Digite um número positivo para a contagem regressiva."
    numero = gets.chomp
    
    if !numero.index(/[a-z]/i)
        if numero.to_i > 0 
            contador(numero.to_i)
        else
            puts "O número digitado tem que ser positivo, por favor, tente novamente."
            solicitarNumero()
        end
    else
        puts "Por favor insira um número válido."
        solicitarNumero()
    end   
end

def contador(numero = 0)
    contador = numero
    while contador >= 0 do 
        puts contador
        contador -= 1
    end
    puts "KABUM"
end

solicitarNumero()
