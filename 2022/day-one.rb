input = File.read("day-one-input.txt").split("\n")

caloriesPerElf = []
currentSum = 0

input.each do |elem|
  if elem == ""
    caloriesPerElf.push(currentSum)
    currentSum = 0
  else
    currentSum += elem.to_i
  end
end

puts "highest calories", caloriesPerElf.max(1)
puts "top three highest calories", caloriesPerElf.max(3).sum
