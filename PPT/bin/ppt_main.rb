require 'ppt'

tiradas = [:piedra, :papel, :tijeras] 
ganadoras = {:piedra => :papel, :papel => :tijeras, :tijeras => :piedra}
resultados = [:gane , :perdi, :empate]
humano = ARGV.shift || ''

ppt_obj = PiedraPapelTijeras.new(tiradas, ganadoras, resultados, humano, "papel", "gane")
resultado = ppt_obj.jugar
maquina = ppt_obj.maquina

if resultado == :gane
   puts "El humano ha jugado #{humano} y la maquina #{maquina}, gana la maquina"
elsif resultado == :perdi
   puts "El humano ha jugado #{humano} y la maquina #{maquina}, gana el humano"
else
   puts "Empate"
end

