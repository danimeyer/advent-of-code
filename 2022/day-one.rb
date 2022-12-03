input = File.read("./inputs/day-one-input.txt").split("\n")

calories_per_elf = []
current_sum = 0

input.each do |elem|
  if elem == ""
    calories_per_elf.push(current_sum)
    current_sum = 0
  else
    current_sum += elem.to_i
  end
end

puts "highest calories", calories_per_elf.max(1)
puts "top three highest calories", calories_per_elf.max(3).sum
