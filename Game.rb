require_relative 'Message.rb'
require_relative 'Player.rb'

class TIC_TAC_TOE
  include MESSAGE

  def initialize
    @player1 = PLAYER.new('X')
    @player2 = PLAYER.new('O')
  end

  def reset
    puts `clear`

    @player1.reset
    @player2.reset
  end

  def play
    move_message('PLAYER 1')
    @player1.make_move

    if @player1.win?
      victory_message('PLAYER 1')
      return
    elsif @player1.draw?
      draw_message
      return
    end

    move_message('PLAYER 2')
    @player2.make_move

    if @player2.win?
      victory_message('PLAYER 2')
      return
    elsif @player2.draw?
      draw_message
      return
    end

    play
  end

  def play_again?
    play_again_message
    choice = gets.chomp
    puts "\n"

    if choice == 'y'
      true
    elsif choice == 'n'
      false
    else
      invalid_message
      play_again?
    end
  end
end
