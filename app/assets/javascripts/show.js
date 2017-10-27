



$(document).ready(function(){
	var show = $(".showComments")

	for (var i = 0; i < show.length; i++) {
		show[i].style.display = "none"
	}
	console.log("ready2")
	$(".displayComments").click(function(){
		console.log("clicked")
		var index = $(".displayComments").index(this);
		console.log($(".fa"))
		$(".fa")[index + 3].classList.toggle('fa-chevron-circle-down')
		$(".fa")[index + 3].classList.toggle('fa-chevron-circle-up')
		if(show[index].style.display == "none"){
			show[index].style.display = "block"
		}else{
			show[index].style.display = "none"
		}
	})
})




// test[4].click( function(){
// 	alert("working?")
// })