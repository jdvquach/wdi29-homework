# Warmup - Raindrops
#
# Write a program using `Ruby` that will take a number (eg `28` or `1755` or `9`, etc) and output the following:
#
# - If the number contains 3 as a factor, output 'Pling'.
# - If the number contains 5 as a factor, output 'Plang'.
# - If the number contains 7 as a factor, output 'Plong'.
# - If the number does not contain 3, 5, or 7 as a factor, output the number as a string.
#
# Examples
# - 28 has 7 as a factor.
#   - In raindrop-speak, this would be a simple "Plong".
# - 1755 has 3 and 5 as factors.
#   - In raindrop-speak, this would be a "PlingPlang".
# - 34 has neither 3, 5 nor 7 as a factor.
#   - Raindrop-speak doesn't know what to make of that,
#     so it just goes with the straightforward "34".
#
# You will need to create a `raindrops.rb` file that can be executable in your terminal.


def raindrops(num)

  # create an empty string that will be apppended to
  str = ''

  # if statement to test if number if divisible by 3, and if so, print out 'Pling' (add Pling to the str)
  # short conditional 'if' statements can be condensed down to a single line.
  str += 'Pling' if num % 3 == 0
  # if num % 3 == 0
  #   str += 'Pling'
  # end

  str += 'Plang' if num % 5 == 0
  # if num % 5 == 0
  #   str += 'Plang'
  # end

  str += 'Plong' if num % 7 == 0
  # if num % 7 == 0
  #   str += 'Plong'
  # end

  # If str is empty, ie not a factor of 3,5,7 then return num (as string)
  str = num.to_s if str.empty?
  # if str.length == 0
  #   str = num.to_s
  # end

  # Ruby allows implicit return. Placing this value last in my program is the same as saying return str.
  str

end

puts raindrops(28)
puts raindrops(1755)
puts raindrops(34)
puts raindrops(105)
