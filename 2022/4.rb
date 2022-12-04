input = File.read("./inputs/day-four-input.txt").split("\n")

input.map! do |pair|
  pair.split(/\D/).map! { |c| c.to_i }
end

def in_range(num, range)
  if num >= range[0] && num <= range[1]
    return true
  else 
    return false
  end
end

inclusive_count = 0
overlapping_count = 0

input.each do |pair|
  if in_range(pair[0], pair[2..3]) && in_range(pair[1], pair[2..3])
    inclusive_count += 1
  elsif in_range(pair[2], pair[0..1]) && in_range(pair[3], pair[0..1])
    inclusive_count += 1
  end

  if in_range(pair[0], pair[2..3]) || in_range(pair[1], pair[2..3])
    overlapping_count += 1
  elsif in_range(pair[2], pair[0..1]) || in_range(pair[3], pair[0..1])
    overlapping_count += 1
  end
end

puts "inclusive pair count: #{inclusive_count}"
puts "overlapping pair count: #{overlapping_count}"