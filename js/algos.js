// Release 0
// Initialize a function that takes an array of strings as an argument, 
// The output of the function will be the longest string of the array
// Sort through the array by comparing each index to the length of the logest word up to that index.
// Print the longest string.

function stringDetector(stringArr) {
	var longestLength = 0;
	var longestWord = "";
	for (var i = 0; i < stringArr.length; i++) {
		if (stringArr[i].length > longestLength) {
			longestLength = stringArr[i].length;
			longestWord = stringArr[i];
		}
	}
	return longestWord
}

// Release 1
// Initialize a function takes two objects and checks to see if the objects share at least one key-value pair

function valueCompare(personOne, personTwo) {
	for (var i = 0; i < 2; i++) {
		if (Object.values(personOne)[i] == Object.values(personTwo)[i]) {
			return true;
		}
	}
}

// Release 2
// Initialize a function that takes an integer for length, 
// and builds and returns an array of strings of the given length.

function wordBuilder(length) {
	var wordArr = [];
	var letters = "abcdefghijklmnopqrstuvwxyz";
	var stringCreator = "";
	for (var i = 0; i < length; i++) { // Loop to determine how many words are in the array
	  	for (var x = 0; x < Math.floor(Math.random() * 10) + 1; x++) { // loop to determine how many characters are in each word.
	  		stringCreator += letters[Math.floor(Math.random() * letters.length)]; 
	  	}
	  	wordArr.push(stringCreator);
	  	stringCreator = "";
	}
	return wordArr;
}


// Driver Code

// stringDetector(["hi", "bye", "Hello world", "bri" ]);
// valueCompare({name: "Steven", age: 54}, {name: "Tamir", age: 54});
// wordBuilder(Math.floor(Math.random() * 10) + 1);

// Driver code that generates an array, prints the array,
// feeds the array to the stringDetector function, and prints the result 10 times.
for (var i = 0; i < 10; i++) {
	var genArray = wordBuilder(Math.floor(Math.random() * 10) + 1);
	console.log(genArray);
	console.log(stringDetector(genArray))
}








