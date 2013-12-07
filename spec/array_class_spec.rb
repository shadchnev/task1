require_relative '../lib/array_class.rb'

describe Array do
  
it "should have my own method for inject" do
  array = Array.new
  array = [1, 2, 3, 4]
  expect(array.chrisinject {|sum, value| sum + value}).to eq(10)
end

it "lets try and different array" do
  array = Array.new
  array = [3, 5, 10, 20]
  expect(array.chrisinject {|sum, value| sum + value}).to eq(38)
end

it "final time with a muddles up one" do
  array = Array.new
  array = [13, 1, 6, 45]
  expect(array.chrisinject {|sum, value| sum + value}).to eq(65)
end

it "may be one more time with some words, nice to see the green in RSPEC :-)" do
  array = Array.new
  array = ['my ', 'car ', 'is ', 'a ', 'BMW.']
  expect(array.chrisinject {|sum, value| sum + value}).to eq('my car is a BMW.')
end


end