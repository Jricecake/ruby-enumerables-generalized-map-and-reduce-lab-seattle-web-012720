# Your Code Here
def map(array)
  new = []
  i = 0
  while i < array.length
    new.push(yield(array[i]))
    i += 1
  end
  new
end

def reduce(array, starting_point = 0)
  if starting_point
    total = starting_point
    i = 0
  else
    sum = array[0]
    i = 1
  end
  while i < array.length
    total = yield(array[i])
    i += 1
  end
  total
end