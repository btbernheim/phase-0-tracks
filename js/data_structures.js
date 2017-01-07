// Release 0
var colorArr = ["blue", "green", "red", "yellow"];
var horseName = ["Sam", "Laddy", "Bob", "Tom"];

colorArr.push("orange");
horseName.push("Tim");

var horseObject = {};


for (i = 0; i < colorArr.length; i ++) {
	horseObject[horseName[i]] = colorArr[i];
}

console.log(horseObject);

