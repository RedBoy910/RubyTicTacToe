require_relative 'Game.rb'
require_relative 'Board.rb'
require_relative 'Player.rb'
require_relative 'Message.rb'

game = TIC_TAC_TOE.new

game.greeting_message

game.play

while game.play_again?
  game.reset
  game.play
end

game.goodbye_message
