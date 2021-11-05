
class Game

	attr_reader :bet
	attr_reader :lines

	def initialize()
		@bet = 0
		@lines = 0
	end

	def get_bet()
		return @bet
	end

	def set_bet(bet)
		@bet = bet
	end

	def get_lines()
		return @lines
	end

	def set_lines(lines)
		@lines = lines
	end
end