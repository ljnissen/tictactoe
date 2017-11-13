require 'gosu'

class Game < Gosu::Window
	attr_accessor :width
	def initialize
		@width = 600
		super(width, width, false)
	end
	def button_down(id)
		case id
			when Gosu::KbQ then close
		end
	end
end

game = Game.new
game.show