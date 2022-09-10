require "./lib/Fafi_game.rb"

puts "Choose any number between 1 and 30 for your first round"
input_try1 = gets.chomp().to_i

puts "Choose any number between 1 and 10 for your second round"
input_try2 = gets.chomp().to_i

game = Game.new(input_try1, input_try2)

if game.valid_input1? != true
  puts "Not a valid input for round 1"
end

if game.valid_input2? != true
  puts "Not a valid input for round 2"
end

if game.win_round_1?
  puts "You won in round 1"
  puts "(#{input_try1}, #{input_try2}) and (#{game.code1}), (#{game.code2})"
elsif game.win_round_2?
  puts "You won in round 2"
  puts "(#{input_try1}, #{input_try2}) and (#{game.code1}), (#{game.code2})"
else
  puts "You did not win anything"
  puts "Your input(#{input_try1}, #{input_try2}) output (#{game.code1}), (#{game.code2})"
end
