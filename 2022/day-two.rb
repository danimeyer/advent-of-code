input = File.read("day-two-input.txt").split("\n")

first_score = 0
second_score = 0

input.each do |pair|
  them = pair[0]
  me = pair[2]

  if them == "A" # ROCK
    if me == "X"
      first_score += 4
      second_score += 3
    elsif me == "Y"
      first_score += 8
      second_score += 4
    elsif me == "Z"
      first_score += 3
      second_score += 8
    end
  elsif them == "B" # PAPER
    if me == "X"
      first_score += 1
      second_score += 1
    elsif me == "Y"
      first_score += 5
      second_score += 5
    elsif me == "Z"
      first_score += 9
      second_score += 9
    end
  elsif them == "C" # SCISSORS
    if me == "X"
      first_score += 7
      second_score += 2
    elsif me == "Y"
      first_score += 2
      second_score += 6
    elsif me == "Z"
      first_score += 6
      second_score += 7
    end
  end
end

puts first_score
puts second_score
