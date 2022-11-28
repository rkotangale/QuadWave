document.querySelector("#show-page").addEventListener("click",function(){
			document.querySelector(".popup").classList.add("active");
		});
document.querySelector(".popup .head-popup .close").addEventListener("click",function(){
	 document.querySelector(".popup").classList.remove("active");
});