<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- 부가적인 테마 -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<title>회원가입</title>
<style>
.container2 {
	width: 20%;
	display: flex;
	justify-content: center;
	align-items: center;
	margin: 0 auto;
}
</style>
</head>
<script type="text/javascript">
	$(document).ready(function() {
		// 취소
		$(".cencle").on("click", function() {

			location.href = "/";

		})

		$("#submit").on("click", function() {
			if ($("#PWD").val() == "") {
				alert("비밀번호를 입력해주세요.");
				$("#PWD").focus();
				return false;
			}
			if ($("#NAME").val() == "") {
				alert("성명을 입력해주세요.");
				$("#NAME").focus();
				return false;
			}
		});

	})
</script>
<body>
	<div class="container2">
		<section id="container">
			<form action="updateMembers.do" method="post">
				<div class="form-group has-feedback">
					<label class="control-label" for="STU_ID">아이디</label> <input
						class="form-control" type="text" id="STU_ID" name="STU_ID"
						value="${member.STU_ID}" readonly="readonly" />
				</div>
				<div class="form-group has-feedback">
					<label class="control-label" for="PWD">패스워드</label> <input
						class="form-control" type="password" id="PWD" name="PWD" />
				</div>
				<div class="form-group has-feedback">
					<label class="control-label" for="NAME">성명</label> <input
						class="form-control" type="text" id="NAME" name="NAME"
						value="${member.NAME}" />
				</div>
				<div class="form-group has-feedback">
					<label class="control-label" for="ADDRESS">주소</label> <input
						class="form-control" type="text" id="ADDRESS" name="ADDRESS"
						value="${member.ADDRESS}" />
				</div>
				<div class="form-group has-feedback">
					<label class="control-label" for="EMAIL">이메일</label> <input
						class="form-control" type="text" id="EMAIL" name="EMAIL"
						value="${member.EMAIL}" />
				</div>
				<div class="form-group has-feedback">
					<label class="control-label" for="PHONE">휴대폰</label> <input
						class="form-control" type="text" id="PHONE" name="PHONE"
						value="${member.PHONE}" />
				</div>
				<div class="form-group has-feedback">
					<button class="btn btn-success" type="submit" id="submit">회원정보수정</button>
					<button class="cencle btn btn-danger" type="button">취소</button>
				</div>
			</form>
		</section>
	</div>
</body>

</html>