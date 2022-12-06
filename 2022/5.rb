input = File.read("./inputs/day-five-input.txt").split("\n\n")

stack_input = input[0].split("\n")
stack_key = stack_input.pop
stacks = {}

stack_key.each_char.with_index do |c, idx|
  if c != " "
    key = c.to_i
    stacks[key] = []
    stack_input.each do |row|
      if row[idx] != " "
        stacks[key].push(row[idx])
      end
    end
    stacks[key].reverse!
  end
end

moves_input = input[1].split("\n").map! do |line| 
  line.split(/\D/).reject(&:empty?).map(&:to_i)
end

moves_input.each do |move|
  count = move[0]
  start = move[1]
  finish = move[2]

  # Comment lines 30-31 in and 34-38 out for solution 2
  # temp = stacks[start].pop(count)
  # stacks[finish].push(temp).flatten!

  # Comment lines 30-31 out and 34-38 in for solution 1
  while count > 0
    temp = stacks[start].pop
    stacks[finish].push(temp)
    count -= 1
  end
end

top_crates = ""

stacks.each do |key, stack|
  top_crates += stack.last
end

puts top_crates