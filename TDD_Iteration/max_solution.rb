#write a test for this problem. Then solve it.

# prereqs arrays, methods, conditional logic
# part I. implement a maximum method that takes and array and returns the largest element of the array
# part II. reimplement this method as an instance method on the array class

def maximum(arr)
	
	#arr.sort {|a,b| b <=> a}[0]
	max = arr[0] # assume the first item is the max, and then iterate and change if needed
	arr.each do |item| 
		if item > max
			max = item
		end
	end
	max
end



# now rewrite this as a method on the array class
class Array
  def maximum
  	max = self[0]
	self.each do |item|
		if item > max
			max = item
		end
	end
	max
  end
end
