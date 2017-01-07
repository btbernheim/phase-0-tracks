
var colorArr = ["blue", "green", "red", "yellow"];
var horseName = ["Sam", "Laddy", "Bob", "Tom"];

colorArr.push("orange");
horseName.push("Tim");

var horseObject = {};


for (i = 0; i < colorArr.length; i ++) {
	horseObject[horseName[i]] = colorArr[i];
}

console.log(horseObject);

function Car(door, year_made, isGoodWithGas) {
	this.door = door;
	this.year_made = year_made;
	this.isGoodWithGas = isGoodWithGas;

	this.start = function () {console.log("vroom!")}
	console.log("INITIALIZING CAR COMPLETE")
}
var anotherCar = new Car("four door", 2015, false);
console.log(anotherCar);
anotherCar.start();

var yetanotherCar = new Car("coupe", 1998, true);
console.log(yetanotherCar);
yetanotherCar.start();