input = File.read("./inputs/day-three-input.txt").split("\n")

shared_items = []

input.each do |rucksack|
  midpoint = rucksack.length / 2

  left = rucksack[0, midpoint]
  right = rucksack[midpoint..-1]

  left.split('').each do |char|
    if right.include? char
      shared_items.push(char)
      break
    end
  end
end

badges = []

input.each_with_index do |rucksack, idx|
  if idx % 3 == 0
    rucksack.split('').each do |char|
      if (input[idx + 1].include? char) && (input[idx + 2].include? char)
        badges.push(char)
        break
      end
    end
  end
end

def get_priorities_sum(arr)
  priorities_sum = 0

  arr.each do |char|
    if char.ord >= 65 && char.ord <= 90
      priorities_sum += (char.ord - 38)
    elsif char.ord >= 97 && char.ord <= 122
      priorities_sum += (char.ord - 96)
    end
  end

  return priorities_sum
end


puts "compartment sum", get_priorities_sum(shared_items)
puts "badge sum", get_priorities_sum(badges)