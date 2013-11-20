require './max_solution'

describe "maximum" do
	it "should return the maximum number in an array" do
		maximum([45,7,3,500]).should eq(500)
	end

	it "should return the maximum number in an array" do
		maximum([45,70,-3,50]).should eq(70)
	end

	it "should return the maximum number in an array" do
		maximum([-45,-7,-3]).should eq(-3)

	end

	it "should return the maximum number in an array" do
		maximum([10,200,130,80]).should eq(200)
	end

	it "should return the maximum number in an array" do
		maximum([11,7]).should eq(11)
	end
end

describe Array, "#maximum" do
	it "should return the maximum number in an array" do
		[45,7,3,500].maximum.should eq(500)
	end

	it "should return the maximum number in an array" do
		[45,70,-3,50].maximum.should eq(70)
	end

	it "should return the maximum number in an array" do
		[-45,-7,-3].maximum.should eq(-3)

	end

	it "should return the maximum number in an array" do
		[10,200,130,80].maximum.should eq(200)
	end

	it "should return the maximum number in an array" do
		[11,7].maximum.should eq(11)
	end
end