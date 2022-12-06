require 'set'

input = File.read("./inputs/day-six-input.txt").split("")

input.each_with_index do |char, idx|
  char_set = Set[]

  char_set.add(char)
  char_set.add(input[idx + 1])
  char_set.add(input[idx + 2])
  char_set.add(input[idx + 3])

  if char_set.length == 4
    puts "four unique characters: #{idx + 4}"
    break
  end
end

input.each_with_index do |char, idx|
  char_set = Set[]

  char_set.add(char)
  char_set.add(input[idx + 1])
  char_set.add(input[idx + 2])
  char_set.add(input[idx + 3])
  char_set.add(input[idx + 4])
  char_set.add(input[idx + 5])
  char_set.add(input[idx + 6])
  char_set.add(input[idx + 7])
  char_set.add(input[idx + 8])
  char_set.add(input[idx + 9])
  char_set.add(input[idx + 10])
  char_set.add(input[idx + 11])
  char_set.add(input[idx + 12])
  char_set.add(input[idx + 13])


  if char_set.length == 14
    puts "fourteen unique characters: #{idx + 14}"
    break
  end
end