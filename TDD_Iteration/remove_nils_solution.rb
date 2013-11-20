#write a test for this problem. Then solve it.
# prereqs arrays, methods, conditional logic, chaining
# Stop this code from throwing an exception. 

def some_method(array)
  array.compact.inject(0) {|sum, number| sum + number}
end
