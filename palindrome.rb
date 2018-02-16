require "pry"

  def menu
    puts '1) Play Palindrome'
    puts '2) Exit the game'
    gets.to_i
    menu_options
  end

  def menu_options(choice)
    case choice
    when 1
      is_palindrome
    when 2
      exit
    else
      puts "Choose a valid option. 1 or 2"
      menu_options
    end

  def is_palindrome(pal)
    puts "Please type a Palindrome"
    pal = gets.to_i
    rev = 0
    r = pal
    while r!=0
      i = r%10
      rev = rev*10 + i
      r /= 10
    end

  if rev == pal
    puts "#{pal} is a Palindrome, congrats!"
  else
    puts "Sorry but #{pal} is not a Palindrome, try again!"
  end

  while true
    choice = menu
    menu_options(choice)
  end
end

is_palindrome
