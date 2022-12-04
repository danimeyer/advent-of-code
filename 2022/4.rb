input = File.read("./inputs/day-four-input.txt").split("\n")

input.map! do |pair|
  pair.split(/\D/).map! { |c| c.to_i }
end

inclusive_pair_count = input.reduce(0) do |count, pair|
  if pair[0].between?(pair[2], pair[3]) && pair[1].between?(pair[2], pair[3])
    count += 1
  elsif pair[2].between?(pair[0], pair[1]) && pair[3].between?(pair[0], pair[1])
    count += 1
  end

  count
end

overlapping_pair_count = input.reduce(0) do |count, pair|
  if pair[0].between?(pair[2], pair[3]) || pair[1].between?(pair[2], pair[3])
    count += 1
  elsif pair[2].between?(pair[0], pair[1]) || pair[3].between?(pair[0], pair[1])
    count += 1
  end
  
  count
end

puts "inclusive pair count: #{inclusive_pair_count}"
puts "overlapping pair count: #{overlapping_pair_count}"