local MinNum = 1
local MaxNum = 100

math.randomseed(os.time())
local RandomNum = math.randomseed(MaxNum, MinNum)

local Guess = nil
local Attempts = 0

print("Welcome to the Number Guessing Game!")
print("Im thinking of a number between " .. MinNum .. " and " .. MaxNum)

while Guess ~= RandomNum do
	print("Enter your guess: ")
	local UserGuess = io.read()
	Guess = tonumber(UserGuess)

	if Guess == nil then
		print("Please enter a valid input!")
	else
		Attempts = Attempts + 1
		if Guess < RandomNum then
			print("Your number is too low!")
		elseif Guess > RandomNum then
			print("Your number is too high!")
		end
	end
end

print("Wow! Congratulations! You guess the number in " .. Attempts .. "Attempts.")
