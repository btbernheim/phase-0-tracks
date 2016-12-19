#Release 0
#Write a method that iterates through an array (.each)
#Check if any values in the array are equal to the given value.
#Return the index of the item if it exists within the array.
#Return nil if it's not in the array.
#(In sum: For each index, find the value of that index and comapre it to the parameter.)

array = [1, 2, 3, 4, 5]
int = 7

def int_search(array, int)
	found = nil
	array.each_index do |char|
		if array[char] == int
			p char
			found = true
		end
	end 
	if found == nil
		p found
	end
end

int_search(array, int)

#Release 1
#Create a method that will recieve a number that specifies how long the Fibonacci sequence will be.
#Start with the numbers 0 and 1, add the two numbers to begin the sequence
#Create an array with a length of two
#Add two values to the array.
#Push the sum of the past two values to the end of the array, remove the value at the front of the array (.shift)
#Create another array containg all the values.
#Repeat the process of adding the two values together and appending the second array with the reult
#Do this until the arrays length = the user provided integer - 2
#Return the result

puts "Enter an integer:"
fib_int = gets.to_i

def fibonacci(fib_int)
	array = [0, 1]
	fib_array = [0, 1]
	i = 0
	until i == fib_int - 2
		fib_array.push (array[0] + array[1])
		array.push (array[0] + array[1])
		array.shift
		i += 1
	end
	p fib_array
end

fibonacci(fib_int)



#Release 2
#Receive an array
#Iterate through the array
#Bubble sort: "repeatedly steps through the list to be sorted, 
#compares each pair of adjacent items and swaps them if they are in the wrong order.
#The pass through the list is repeated until no swaps are needed, 
#which indicates that the list is sorted. 
#Think through bubble sort.
#Loop through the array until num_swap == 0
#Compare values within an array and swap their index if one value is smaller at the compared index location.
#Record the nummer of swaps = num_swap


array = [9,6,7,2,5,3,4,1,8]

def bubble_sort(array)
  sorted = false
  x = array.length
  until sorted == true
    sorted = true
    (x - 1).times do |i|
	    if array[i] > array[i + 1]
	     	array[i], array[i + 1] = array[i + 1], array[i]
	    	sorted = false
	    end
    end
  end
  p array
end

bubble_sort(array)
