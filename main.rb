def fibs(n)
  results = [0, 1]
  case n
  when 0
    results.pop(2)
  when 1
    results.pop
  when 3..
    (n - 2).times { results.push((results[-1] + results [-2])) }
  end
  results
end

def fibs_rec(n)
  return [0] if n == 1
  return [0, 1] if n == 2
  arr = fibs_rec(n - 1)
  arr.push(arr[-1] + arr[-2])
end

p fibs(8)

p fibs_rec(8)