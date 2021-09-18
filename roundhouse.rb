
wheels = [
	['1', '2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K', 'A'],
	['1', '2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K', 'A'],
	['1', '2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K', 'A'],
	['1', '2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K', 'A'],
	['1', '2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K', 'A']
]

spins = wheels.length().times.map{ rand(30..60) }

def get_offset(spin, wheel_length, offset)
	return ((spin % wheel_length) + offset) % wheel_length
end

for row in 0..2 do
	for w in 0..wheels.length() - 1 do
		print(wheels[w][get_offset(spins[w], wheels[w].length(), row)] + " ")
	end
	puts("")
end
