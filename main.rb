require "./lib/Fafi_game.rb"

puts "Choose any number between 1 and 30 for your first round"
input_try1   = gets.chomp()

puts "Choose any number between 1 and 10 for your second round"
input_try2   = gets.chomp()

game = Game.new(input_try1, input_try2)

if game.win?
  puts 'You won'
  puts "(#{input_try1}, #{input_try2}) and (#{game.code1}), (#{game.code2})"
else
  puts "You did not win anything"
  puts "(#{input_try1}, #{input_try2}) and (#{game.code1}), (#{game.code2})"
end
