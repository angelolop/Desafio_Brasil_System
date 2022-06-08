#Faça o somatório da sua data de nascimento."

def requisitarData

    puts "Digite sua data de nascimento."
    print "\n(dd/mm/aaaa) : "
    data = gets.chomp;

    verificarData(data)

end


def verificarData(data = "")

    dataNascimento = data.scan(/\d{2}\/\d{2}\/\d{4}/)[0]

    if !dataNascimento
        puts "O dia, mês ou ano não são aceitos. Por favor informe uma data válida."
        requisitarData()
    else 
        dataComNumeros = dataNascimento.gsub('/','')
        somar(dataComNumeros)
    end

end

def somar(dataComNumero = "")

    soma = ""
    resultado = 0

    for i in dataComNumero.split("") do
        if dataComNumero[i].to_i > 0
            soma += "#{dataComNumero[i]}"
        else
            ""
        resultado += dataComNumero[i].to_i 
        end
    end 

    puts "#{soma.split("").join("+")} = #{resultado}"

end

requisitarData();