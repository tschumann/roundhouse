require_relative 'game'
require_relative 'machine'

machine = Machine.new()

spins = machine.wheels.length().times.map{ rand(30..60) }

def get_offset(spin, wheel_length, offset)
	return ((spin % wheel_length) + offset) % wheel_length
end

game = Game.new()

for i in 0 ... ARGV.length
	if ARGV[i] == "--bet"
		game.set_bet(ARGV[i + 1].to_i())
		i += 1
	end
	if ARGV[i] == "--lines"
		game.set_lines(ARGV[i + 1].to_i())
		i += 1
	end
end

for row in 0..2 do
	for w in 0..machine.wheels.length() - 1 do
		print(machine.wheels[w][get_offset(spins[w], machine.wheels[w].length(), row)] + " ")
	end
	puts("")
end
