def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(total)
  puts "Your cards add up to #{total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(total)
  puts "Sorry, you hit #{total}. Thanks for playing!"
end

def initial_round
  first = deal_card
  second = deal_card
  display_card_total(first + second)
  return first + second
end

def hit?(total)
  prompt_user
  input = get_user_input
  if input == "s"
  elsif input == 'h'
    new_card = deal_card
    total = total + new_card
  else
    invalid_command
  end
  return total
end

def invalid_command
  "Please enter a valid command"
  prompt_user
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
 welcome
 total = initial_round
 until total > 21
   total = hit?(total)
   display_card_total(total)
 end
 end_game(total)
end
