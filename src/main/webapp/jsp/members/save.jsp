<%@ page import="hello.servlet.domain.member.MemberRepository" %>
<%@ page import="hello.servlet.domain.member.Member" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% // < 이 안에 자바 코드를 넣을 수 있음
  // MemberRepository instance 가져오기
  MemberRepository memberRepository = MemberRepository.getInstance();
  System.out.println("save.jsp");

  // 요청 파라미터에서 데이터 추출
  // request, response 사용 가능
  String username = request.getParameter("username");
  int age = Integer.parseInt(request.getParameter("age"));

  // Member 객체 생성 및 저장
  Member member = new Member(username, age);
  System.out.println("member = " + member);
  memberRepository.save(member);
%>
<html>
<head>
  <meta charset="UTF-8">
  <title>Member Saved</title>
</head>
<body>
<h1>회원 저장 성공</h1>
<ul>
  <li>id = <%= member.getId() %></li>
  <li>username = <%= member.getUsername() %></li>
  <li>age = <%= member.getAge() %></li>
</ul>
<a href="/index.html">메인으로 돌아가기</a>
</body>
</html>
