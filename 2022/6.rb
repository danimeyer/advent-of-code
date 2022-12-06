require 'set'

input = File.read("./inputs/day-six-input.txt").split("")

def find_unique_string(char_array, length)
  char_array.each_with_index do |char, idx|
    char_set = Set.new
    key = idx
    counter = length

    while counter > 0
      char_set.add(char_array[key])
      counter -= 1
      key += 1
    end

    if char_set.length == length
      return idx + length
    end
  end
end

puts "four: #{find_unique_string(input, 4)}"
puts "fourteen: #{find_unique_string(input, 14)}"