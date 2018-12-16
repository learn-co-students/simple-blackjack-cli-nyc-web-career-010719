def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  return 1+rand(11)
end

def display_card_total(num)
  # code #display_card_total here
  puts "Your cards add up to #{num}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  gets
end

def end_game(num)
  # code #end_game here
  puts "Sorry, you hit #{num}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  card1 = deal_card
  card2 = deal_card
  display_card_total(card1+card2)
  return card1+card2
end

def hit?(num)
  # code hit? here
  prompt_user
  inp = get_user_input
  if inp == 'h'
    num+=deal_card
  elsif inp== 's'
    
  else
    invalid_command
    prompt_user
  end
  return num
end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
    welcome
  total = 0
  until total>21
    total = initial_round
    # prompt_user
    total = hit?(total)
    display_card_total(total)
  end
  end_game(total)
end
    
