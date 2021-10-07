require 'pry-byebug'

# Fibonacci methods
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

# p fibs(8)

# p fibs_rec(8)

# Merge sort method
def merge_sort(arr)
  # binding.pry
  if arr.size < 2
    return arr
  else
    # sort left half of elements
    x = merge_sort(arr.slice(0, arr.size / 2))
    # sort right half of elements
    y = merge_sort(arr.slice(arr.size / 2, arr.size / 2))
    # merge sorted halves
    new_arr = []
    while new_arr.size < arr.size
      if x.empty?
        new_arr.push(y[0])
        y.shift
      elsif y.empty?
        new_arr.push(x[0])
        x.shift
      elsif x[0] >= y[0]
        new_arr.push(y[0])
        y.shift
      else
        new_arr.push(x[0])
        x.shift
      end
    end
    new_arr
  end
end

p merge_sort([2,3,1,6,5,8,7,4])
