class Array

def chrisinject
  # shift takes the first element and moves the rest down into the first position
  # in our case it passes the first element to sum on each iteration of chrisinject
  sum = self.shift
  # pass each value from shift into the block, yield takes it from the block and
  #passes it to the be added
  self.each { |value| sum = yield(sum, value) }
  sum
end

end