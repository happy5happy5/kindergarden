/*	
캐로셀 이미지를 데이터베이스에서 받아왔을때 작업 해야하는 방식의 레퍼런스입니다.
작동하는것은 확인했으나 이 방법 말고도 여러 방법이 있으니 아이디어 떠올리기를 멈추지 말아주세요!
let list = {
			"0" : {
				"src" : "resource/spring.jpg",
				"text" : "hihi im spring.jpg in resource folder"
			},
			"1" : {
				"src" : "resource/snow.jpg",
				"text" : "hihi im snow.jpg in resource folder"
			},
			"2" : {
				"src" : "resource/autumn.jpg",
				"text" : "hihi im autumn.jpg in resource folder"
			},
		};

	function carouselMaker(item,index) {
		let newCarouselContainer=document.createElement("div");
		newCarouselContainer.classList.add("carousel-item");
		if(index==0)newCarouselContainer.classList.add("active");
		let newImg=document.createElement("img");
		newImg.setAttribute("src",item.src)
		newImg.setAttribute("style","width:100px;hight:100px")
		newImg.classList.add("d-block");
		newImg.classList.add("w-100");
		let newCarouselCaption=document.createElement("div");
		newCarouselCaption.classList.add("carousel-caption");
		newCarouselCaption.classList.add("d-none");
		newCarouselCaption.classList.add("d-md-block");
		let newH5=document.createElement("h5");
		newH5.textContent="라벨을 뭘로하지?";
		let newP=document.createElement("p");			
		newP.textContent=item.text;
		newCarouselContainer.appendChild(newImg);
		newCarouselContainer.appendChild(newCarouselCaption);
		newCarouselCaption.appendChild(newH5);
		newCarouselCaption.appendChild(newP);
		document.querySelector(".carousel-inner").appendChild(newCarouselContainer);
	}
	for(let i=0;i<Object.keys(list).length;i++){
		carouselMaker(list[i],i);
	}*/
	
	
