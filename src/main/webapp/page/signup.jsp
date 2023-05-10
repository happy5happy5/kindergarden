<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/header-common.jsp"%>
<body>
	<%@ include file="/common/nav.jsp"%>
    <div class="container-fluid" style="background: linear-gradient(to bottom right, #FFDAB9 0%, #FFA07A 100%);">
        <div class="row justify-content-center">
            <div class="col-md-6">
                <div class="card my-5">
                    <div class="card-body">
                        <h1 class="text-center">회원가입</h1>
                        <form class="form-signin" action="signup_process.jsp" method="post" onsubmit="return validateForm()">
<!--                             <div class="form-group">
                                <label for="inputID">ID</label>
                                <input type="text" class="form-control" id="inputID" placeholder="아이디를 입력하세요." name="userId" required autofocus>
                                <p id="inputIDError" class="text-danger"></p>
                            </div> -->
                            <div class="form-group">
							    <label for="inputID">ID</label>
							    <input type="text" class="form-control <%= (request.getParameter("duplicateId") != null ) ? "is-invalid" : "" %>" id="inputID" placeholder="아이디를 입력하세요." name="userId" required autofocus>
							    <% 
							    String duplicatedId= request.getParameter("duplicateId");
							    if ( duplicatedId != null ) { 
							    %>
							        <div class="invalid-feedback">
							           아이디 "<%=duplicatedId%>"은/는 이미 사용 중입니다.
							        </div>
							    <% } %>
							    <p id="inputIDError" class="text-danger"></p>
							</div>
                            
                            
                            
                            
                            <div class="form-group">
                                <label for="inputPassword">Password</label>
                                <input type="password" class="form-control" id="inputPassword" placeholder="비밀번호를 입력하세요." name="password" required>
                                <p id="inputPasswordError" class="text-danger"></p>
                            </div>
                            <div class="form-group">
                                <label for="inputPasswordConfirm">Confirm Password</label>
                                <input type="password" class="form-control" id="inputPasswordConfirm" placeholder="비밀번호를 다시 입력하세요." name="password_confirm" required>
                                <p id="inputPasswordConfirmError" class="text-danger"></p>
                            </div>
                            <div class="form-group">
                                <label for="inputPhone">Phone</label>
                                <input type="text" class="form-control" id="inputPhone" placeholder="전화번호를 입력하세요." name="phone" required>
                                <p id="inputPhoneError" class="text-danger"></p>
                            </div>
                            <div class="form-group">
                                <label for="inputEmail">Email</label>
                                <input type="email" class="form-control" id="inputEmail" placeholder="이메일을 입력하세요." name="email" required>
                                <p id="inputEmailError" class="text-danger"></p>
                            </div>
                            <button class="btn btn-success btn-block" type="submit">회원가입</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

	<%@ include file="/common/footer.jsp"%>
	<%@ include file="/common/footer-common.jsp"%>

    <script>
        function validateForm() {
            let id = document.getElementById("inputID").value
            let password = document.getElementById("inputPassword").value
            let passwordConfirm = document.getElementById("inputPasswordConfirm").value
            let phone = document.getElementById("inputPhone").value
            let email = document.getElementById("inputEmail").value

            let idError = document.getElementById("inputIDError")
            let passwordError = document.getElementById("inputPasswordError")
            let passwordConfirmError = document.getElementById("inputPasswordConfirmError")
            let phoneError = document.getElementById("inputPhoneError")
            let emailError = document.getElementById("inputEmailError")

            // id validation
            if (id.length < 5 || id.length > 20) {
                idError.innerHTML = "ID는 5~20자리여야 합니다."
                return false
            }
            else {
                idError.innerHTML = ""
            }

            // password validation
/*             if (password.length < 8 || password.length > 20) {
                passwordError.innerHTML = "비밀번호는 8~20자리여야 합니다."
                return false
            }  */
            
            if (password.length > 5) {
                passwordError.innerHTML = "비밀번호는 8~20자리여야 합니다."
                return false
            } 
            
            else {
                passwordError.innerHTML = ""
            }

            // password confirm validation
            if (password !== passwordConfirm) {
                passwordConfirmError.innerHTML = "비밀번호와 비밀번호 확인이 일치하지 않습니다."
                return false
            } else {
                passwordConfirmError.innerHTML = ""
            }

            // phone validation
            if (!/^[0-9]{3}-[0-9]{3,4}-[0-9]{4}$/.test(phone)) {
                phoneError.innerHTML = "전화번호를 형식에 맞게 입력해주세요. (ex: 010-1234-5678)"
                return false
            } else {
                phoneError.innerHTML = ""
            }

            // email validation
			if (!/^[a-zA-Z0-9]{3,}@[a-zA-Z]{3,}.[a-zA-Z]{2,}(.[a-zA-Z]{2,})?$/.test(email)) {
			    emailError.innerHTML = "이메일을 형식에 맞게 입력해주세요."
			    return false
			} else {
			    emailError.innerHTML = ""
			}

            return true
        }
    </script>

</body>