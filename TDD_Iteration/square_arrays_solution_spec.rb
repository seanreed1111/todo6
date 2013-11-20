# #write a test for this problem. Then solve it.
# # Instructions:
# # Return an array that contains the squares of all elements in an array?

# def square_array(some_array)
#   # code goes here
# end

require './square_arrays_solution'

describe "square_array" do
	it "should return an array with the squares of all numbers in an array" do
		square_array([2,3,4,5]).should eq([4,9,16,25])
	end

	it "should return an array with the squares of all numbers in an array" do
		square_array([15]).should eq([225])
	end

end