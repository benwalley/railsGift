var password = document.getElementsByClassName("password");
var pass = document.getElementById("pass")
var confirm = document.getElementsByClassName("confirm");
var submitButton = document.getElementsByClassName('userSubmit');
var passwordError = document.getElementsByClassName("passwordError");

var form = document.forms;


function changed(){
	if(password[0].value != confirm[0].value){
		confirm[0].setCustomValidity("password does not match")
	}else{
		confirm[0].setCustomValidity("")
	}

}





// function submitHandler(){
// 	if(password[0].value != confirm[0].value){
// 		confirm[0].setCustomValidity("password does not match")
// 	}else{
// 		confirm[0].setCustomValidity("")
// 	}
// }