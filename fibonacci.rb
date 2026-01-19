def fibs(num)
  output = [0,1]
  if num == 2
    
  elsif num == 1 
    output.pop
  else 
    counter = num - 2
    counter.times do 
      output << output[-2] + output[-1]
    end

  end
  output
end

def fibs_rec(num)
  puts 'This was printed recursively'
  output = []
  if num == 1
    output = [0]
  elsif num == 2
    output = [0,1]
  else
    output = fibs_rec(num - 1)
    output << output[-2] + output[-1]
  end
  output
end

puts fibs_rec(1)
puts '.....'
puts fibs_rec(2)
puts '.....'
puts fibs_rec(3)
puts '.....'

puts fibs_rec(20)
puts '.....'
