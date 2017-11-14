require 'gosu'

class Game < Gosu::Window
	attr_accessor :width, :cell_width
	def initialize
		@width = 600
		@cell_width = @width/3
		super(width, width, false)
	end
	def button_down(id)
		case id
			when Gosu::KbQ then close
		end
	end
	
	def needs_cursor?
		true
	end

	def draw
		[cell_width, cell_width*2].each do |w|
			draw_line(w, 0, Gosu::Color::WHITE,
						w, width, Gosu::Color::WHITE)
		end
	end
end

game = Game.new
game.show