def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  return rand(1..11)
end

def display_card_total(card_total)
  # code #display_card_total here
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  method = gets.chomp 
end

def end_game(card_total)
  if card_total > 21
    puts "Sorry, you hit #{card_total}. Thanks for playing!"
  # code #end_game here
end
end

def initial_round
  sum = deal_card + deal_card
  display_card_total(sum)
  return sum
  # code #initial_round here
end

def hit?(card_total)
  prompt_user
  input = get_user_input
  if input == "h"
    card_total += deal_card
    
    elsif input == "s"
      card_total
      
    else invalid_command
      prompt_user
  end
  # code hit? here
  
end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
  prompt_user
  
  get_user_input
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome 
  sum = initial_round
  until sum > 21 
        sum = hit?(sum)
    display_card_total(sum)
  
end
end_game(sum)
end 
    
    
