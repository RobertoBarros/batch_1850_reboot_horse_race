wallet = 100

loop do 

  # Exibe uma mensagem de boas vindas
  puts "Bem-vindos à corrida de cavalos!" 

  # Mostra os cavalos da corrida
  horses = ["preto", "branco", "malhado"]
  horses.each_with_index do |horse, index|
    puts "#{index + 1} - #{horse}"
  end

  # Perguntar qual cavalo ela acha que vai ganhar
  puts "Escolha o número do cavalo:"
  number = gets.chomp.to_i

  # Simular a corrida com os cavalos e determinar a ordem de chegada
  podium = horses.shuffle

  # Mostrar o resultado da corrida
  puts "O resultado da corrida foi:"
  podium.each_with_index do |horse, index|
    puts "#{index + 1} - #{horse}"
  end

  # Verificar se o cavalo escolhido é o vencedor da corrida
  puts "O cavalo vencedor é o #{podium[0]}."
  puts "Você apostou no cavalo #{horses[number - 1]}."

  # Mostrar se ganhou ou perdeu
  # puts podium[0] == horses[number - 1] ? "Você venceu!" : "Você perdeu!"

  if podium[0] == horses[number - 1] 
    puts "Você venceu!" 
    wallet +=10
  else
    puts "Você perdeu!"
    wallet -=30
  end

  puts "O seu saldo é de #{wallet} reais."

  if wallet <= 0 
    break
  end

end

puts "Você está falido."
