// Initialize a function that takes an array of strings as an argument, 
// The output of the function will be the longest string of the array
// Sort through the array by comparing each index to the length of the logest word up to that index.
// Print the longest string.
// var stringArr = ["hi", "bye", "Hello world", "bri" ];

function stringDetector(stringArr) {
	var longestLength, longestWord; // You don't have to pre set a variable before hand in JS, just declare it.
	for (var i = 0; i < stringArr.length; i++) {
		if (stringArr[i].length > longestLength) {
			longestLength = stringArr[i].length;
			longestWord = stringArr[i];
		}
	}
	return longestWord
	//console.log(longestWord);
}


// Initialize a function takes two objects and checks to see if the objects share at least one key-value pair
// var personOne = {name: "Steven", age: 54};
// var personTwo = {name: "Tamir", age: 54};

function valueCompare(personOne, personTwo) {
	for (var i = 0; i < 2; i++) {
		if (Object.values(personOne)[i] == Object.values(personTwo)[i]) {
		}
	return true;
	}
}

// Initialize a function that takes an integer for length, 
// and builds and returns an array of strings of the given length.
// var randNum = Math.floor(5)

function wordBuilder(length) {
	var wordArr = [];
	var letters = "abcdefghijklmnopqrstuvwxyz";
	var stringCreator = "";
	for (var i = 0; i < length; i++) {
	  	for (var x = 0; x < Math.floor(Math.random() * 10) + 1; x++) {
	  		stringCreator += letters[Math.floor(Math.random() * letters.length)]; 
	  	}
  	wordArr.push(stringCreator);
  	stringCreator = "";
	}
	return wordArr;
}


// Driver Code

stringDetector(["hi", "bye", "Hello world", "bri" ]);
valueCompare({name: "Steven", age: 54}, {name: "Tamir", age: 54});
wordBuilder(Math.floor(Math.random() * 10) + 1);

for (var i = 0; i < 10; i++) {









