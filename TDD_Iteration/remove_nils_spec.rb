# #write a test for this problem. Then solve it.
# # prereqs arrays, methods, conditional logic, chaining
# # Stop this code from throwing an exception. 

# def some_method
#   [1, 4, nil, 9, 16, nil].___.inject(0) {|sum, number| sum + number}
# end

require './remove_nils_solution'

describe "some_method" do
	it "should return the sum of all numbers in an array" do
		some_method([10,20,30,40]).should eq(100)
	end

	it "should return the sum of all numbers in an array for an array with one nil item" do
		some_method([10,nil,30,40]).should eq(80)
	end	

	it "should return the sum of all numbers in an array for an array with more than one nil item" do
		some_method([1, 4, nil, 9, 16, nil]).should eq(30)
	end	

end