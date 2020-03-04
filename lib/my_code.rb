# Your Code Here
require 'pry'

def map(array)
  idx = 0
  new_arr = []
  while idx < array.length do
    new_arr.push(yield(array[idx]))
    idx += 1
  end
  new_arr
end

def reduce(array, sv = nil)
  
  if sv
    sum = sv
    idx = 0
  else
    sum = array[0]
    idx = 1
  end
  while idx < array.length do
    sum = yield(sum, array[idx])
    idx += 1
  end
  sum
end












