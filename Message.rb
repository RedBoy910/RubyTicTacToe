module MESSAGE
  def greeting_message
    puts "Welcome to my TIC-TAC-TOE game! PLAYER 1 plays with the 'X' character, and PLAYER 2 plays with the 'O' character.\n\n"
  end

  def goodbye_message
    puts `clear`
    puts "Thanks for playing!\n\n"
  end

  def victory_message(winner)
    puts "#{winner} wins!\n\n"
  end

  def play_again_message
    puts "Do you wish to play again? (y/n)\n\n"
  end

  def invalid_message
    puts "Invalid choice, try again!\n\n"
  end

  def move_message(player)
    puts "#{player}, choose one of the available positions.\n\n"
  end

  def draw_message
    puts "It's a draw!\n\n"
  end
end
