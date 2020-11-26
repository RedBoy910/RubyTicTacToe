require_relative 'Message.rb'
require_relative 'Board.rb'

class PLAYER
  include MESSAGE

  @@board = BOARD.new

  def initialize(symbol)
    @taken = []
    @symbol = symbol
  end

  def reset
    @taken = []
    @@board.reset
  end

  def make_move
    @@board.show
    choice = gets.chomp.to_i
    puts "\n"

    if choice < 0 || choice > 9 || @@board.valid?(choice) == false
      invalid_message
      make_move
      return
    end

    @@board.update_element(choice, @symbol)
    @taken.push(choice)
  end

  def print_taken
    puts "\n\n"
    @taken.each { |x| puts x }
    puts "\n\n"
    1
  end

  def win?
    @@board.win_combo?(@taken)
  end

  def draw?
    @@board.draw?
  end
end
