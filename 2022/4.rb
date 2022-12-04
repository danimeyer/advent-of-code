input = File.read("./inputs/day-four-input.txt").split("\n")

input.map! do |pair|
  pair.split(/\D/).map! { |c| c.to_i }
end

def inclusive_pair_count(arr)
  arr.reduce(0) do |sum, pair|
    if (pair[2]..pair[3]).cover?(pair[0]) && (pair[2]..pair[3]).cover?(pair[1])
      sum += 1
    elsif (pair[0]..pair[1]).cover?(pair[2]) && (pair[0]..pair[1]).cover?(pair[3])
      sum += 1
    else
      sum
    end
  end
end

def overlapping_pair_count(arr)
  arr.reduce(0) do |sum, pair|
    if (pair[2]..pair[3]).cover?(pair[0]) || (pair[2]..pair[3]).cover?(pair[1])
      sum += 1
    elsif (pair[0]..pair[1]).cover?(pair[2]) || (pair[0]..pair[1]).cover?(pair[3])
      sum += 1
    else
      sum
    end
  end
end

puts "inclusive pair count", inclusive_pair_count(input)
puts "overlapping pair count", overlapping_pair_count(input)