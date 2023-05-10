function checkForm(){
	var regExpName = /^[가-힣]+$/;
	var regExpPhone =/^\d{3}-\d{3,4}-\d{4}$/;
	var regExpEmail =/^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;
	var regExpDate = /^\d{4}-\d{2}-\d{2}$/;
	
	var form = document.form_detail;
	
	var name = form.name.value;
	var phone = form.phone.value;
	var email = form.email.value;
	var date = form.date.value;

	if (!regExpName.test(name)) {
		alert("이름은 한글로 입력해주세요.");
		form.name.select();
		return;
	}
	
	if (!regExpPhone.test(phone)) {
		alert("연락처를 형식에 맞게 입력해주세요.");
		form.phone.select();
		return;
	}
	
	
	if (!regExpEmail.test(email)) {
		alert("이메일을 확인해주세요.");
		form.email.focus();
		return;
	}
	
	if (!regExpDate.test(date)){
		alert("예약 날짜를 선택해주세요.");
		form.date.select();
		return;
	}
	
	form.action = "reservation_process.jsp";
}
