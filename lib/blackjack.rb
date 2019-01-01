def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  card = rand(1..11)
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
  gets
end

def end_game(card_total)
  # code #end_game here
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
  
end

def initial_round
  # code #initial_round here
  card_amt = deal_card + deal_card
  display_card_total(card_amt)
  return card_amt
end

def hit?(current_total)
  # code hit? here
  prompt_user
  input = get_user_input
  if input == "h"
    card = deal_card
    current_total += card
    return current_total
    elsif input == "s"
    return current_total
  else invalid_command prompt_user
    
end
end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  card_amt = initial_round
  until card_amt > 21
    card_amt = hit?(card_amt)
   display_card_total(card_amt)
end
 end_game(card_amt)
end  



