class Array


  # First, well done on writing the implementation for inject
  # It's incomplete but the main idea – calling the block and passing
  # the result back into the block on each iteration – is there. Well done!
  def chrisinject
    # shift takes the first element and moves the rest down into the first position
    # in our case it passes the first element to sum on each iteration of chrisinject
    # This is dangerous: you shouldn't be modifying the original array
    sum = self.shift
    # pass each value from shift into the block, yield takes it from the block and
    # passes it to the be added
    self.each { |value| sum = yield(sum, value) }
    sum
  end

end