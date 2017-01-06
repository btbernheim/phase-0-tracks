// Reverse a string

// Initialize a function called reverseString that takes in a string as an argument
// Create an epty string variable within the function
// As the string is iterated through in reverse, store each letter in the new string
// Print out the reversed string

function reverseString(str) {
	var newStr = "";
		// Create a new string to store the output of each iteation
	for (var i = str.length -1; i >= 0; i--) {
		// Start at the end of the string; 
		// as long as the index is >= 0, keep iterating, move down 1 index.
		newStr += str[i];
		// Add the current iterations index to the new string
	}
    	return newStr;
    	// return the final output of newStr
}

reverseString("hello");

// console.log(reverseString("hello")); Will print it out 