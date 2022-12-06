input = File.read("./inputs/day-five-input.txt").split("\n\n")

stack_input = input[0].split("\n")
stack_key = stack_input.pop

moves_input = input[1].split("\n").map! do |line| 
  line.split(/\D/).reject(&:empty?).map(&:to_i)
end

def create_stacks(keys, containers)
  stacks = {}

  keys.each_char.with_index do |c, idx|
    if c != " "
      key = c.to_i
      stacks[key] = []
      containers.each do |row|
        if row[idx] != " "
          stacks[key].push(row[idx])
        end
      end
      stacks[key].reverse!
    end
  end

  stacks
end

def move_one(stacks, moves)
  moves.each do |move|
    count = move[0]
    start = move[1]
    finish = move[2]

    while count > 0
      temp = stacks[start].pop
      stacks[finish].push(temp)
      count -= 1
    end
  end
  stacks
end

def move_stack(stacks, moves)
  moves.each do |move|
    count = move[0]
    start = move[1]
    finish = move[2]
  
    temp = stacks[start].pop(count)
    stacks[finish].push(temp).flatten!
  end
  stacks
end

def get_top_containers(stacks)
  stacks.reduce("") do |top_crates, (key, stack)|
    top_crates += stack.last
  end
end

first_solution_stack = create_stacks(stack_key, stack_input)
move_one(first_solution_stack, moves_input)
puts "first solution: #{get_top_containers(first_solution_stack)}"

second_solution_stack = create_stacks(stack_key, stack_input)
move_stack(second_solution_stack, moves_input)
puts "second solution: #{get_top_containers(second_solution_stack)}"