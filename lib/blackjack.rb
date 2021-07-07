def welcome
  puts "Welcome to the Blackjack Table"# code #welcome here
end

def deal_card
  rand(1..11) # code #deal_card here
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"# code #display_card_total here
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"# code #prompt_user here
end

def get_user_input
  answer = gets.chomp# code #get_user_input here
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"# code #end_game here
end

def initial_round
  x = deal_card + deal_card
  display_card_total(x)
  return x# code #initial_round here
end

def hit?(card_total)
  prompt_user
  user_input = get_user_input
  if user_input == 'h'
    deal_card + card_total
  elsif user_input == 's'
    card_total
  end# code hit? here
end

def invalid_command
  if get_user_input != 'h' && get_user_input != 's'
    puts "Please enter a valid command"
    prompt_user  #code invalid_command here
end
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  card_total = initial_round
  until card_total > 21
    card_total = hit?(card_total)
    display_card_total(card_total)# code runner here
  end
  end_game(card_total)
end
