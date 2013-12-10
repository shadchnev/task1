require_relative '../lib/array_class.rb'

describe Array do

# be careful with the indentation: indent everything correctly

# try to choose better names for the tests
it "should sum an array of numbers" do
  # you don't have to call Array.new at all
  array = [1, 2, 3, 4]
  expect(array.chrisinject {|sum, value| sum + value}).to eq(10)
end

it "should sum a different array of numbers" do  
  array = [3, 5, 10, 20]
  expect(array.chrisinject {|sum, value| sum + value}).to eq(38)
end

it "should sum yet another array of numbers" do  
  array = [13, 1, 6, 45]
  expect(array.chrisinject {|sum, value| sum + value}).to eq(65)
end

# the names I suggested aren't really good either but you
# shouldn't have repetitive tests anyway

it "should append strings together" do  
  array = ['my ', 'car ', 'is ', 'a ', 'BMW.']
  expect(array.chrisinject {|sum, value| sum + value}).to eq('my car is a BMW.')
end

  # you could also have written other tests for other operations, for example:
  it 'should multiple several numbers' do
    expect([2,4,5].chrisinject {|product, value| product * value}).to eq(40)
  end

end