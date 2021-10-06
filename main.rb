def fibs(n)
  results = [0, 1]
  case n
  when 0
    results.pop(2)
  when 1
    results.pop
  when 2
    results
  when 3..
    n.times { results.push((results[-1] + results [-2])) }
  end
  results
end

p fibs(30)