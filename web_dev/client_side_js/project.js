var p_font_color = document.getElementById("question");



p_font_color.style.color = "red";


// Event listener
function p_on_click(event){
	console.log("event done")
	console.log(event);
	p_answer.style.visibility = "visible";
}

answer.style.visibility = "hidden";

var p_answer = document.getElementById("answer");


click.addEventListener("click", p_on_click, p_answer);