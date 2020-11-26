require_relative 'Message.rb'

class BOARD
  include MESSAGE

  @@combo = [[1, 2, 3], [4, 5, 6], [7, 8, 9], [1, 4, 7], [2, 5, 8], [3, 6, 9], [1, 5, 9], [3, 5, 7]]

  def initialize
    @elements = %w[1 2 3 4 5 6 7 8 9]
    @used = [false, false, false, false, false, false, false, false, false]
  end

  def reset
    @elements = %w[1 2 3 4 5 6 7 8 9]
    @used = [false, false, false, false, false, false, false, false, false]
  end

  def show
    puts "| #{@elements[0]} | #{@elements[1]} | #{@elements[2]} |"
    puts '-------------'
    puts "| #{@elements[3]} | #{@elements[4]} | #{@elements[5]} |"
    puts '-------------'
    puts "| #{@elements[6]} | #{@elements[7]} | #{@elements[8]} |"
    puts "\n\n"
  end

  def valid?(choice)
    return false if choice.class != Integer

    (@used[choice - 1] == false)
  end

  def update_element(choice, symbol)
    while choice.class != Integer
      invalid_message
      choice = gets.chomp
    end

    @elements[choice - 1] = symbol
    @used[choice - 1] = true
  end

  def win_combo?(v)
    @@combo.any? do |arr|
      arr.all? do |x|
        v.any? do |y|
          y == x
        end
      end
    end
  end

  def draw?
    @used.all? { |x| x == true }
  end
end
