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
  i = 0
  while i < array.length
    yield(array[i])
    i += 1
  end
end