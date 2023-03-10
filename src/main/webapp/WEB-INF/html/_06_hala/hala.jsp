<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<! DOCTYPE html>
<html>
<head>
<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<%
String path = request.getContextPath();
String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path
		+ "/html/assets/css/main.css";
%>
<%
String pathimg = request.getContextPath();
String basePathimg = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + pathimg
		+ "/html/images/meatball-icon.png";
%>
<%
String basePathimg2 = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path
		+ "/html/images/meatball-200.png";
%>
<%
String basePathimg3 = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path
		+ "/html/index.jsp";
%>
<%
String basePathimg4 = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path
		+ "/html/backIndex.jsp";
%>
<%
String basePath1 = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path
		+ "/html/assets/js/jquery.min.js";
%>

<%
String basePath2 = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path
		+ "/html/assets/js/browser.min.js";
%>

<%
String basePath3 = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path
		+ "/html/assets/js/breakpoints.min.js";
%>

<%
String basePath4 = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path
		+ "/html/assets/js/util.js";
%>

<%
String basePath5 = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path
		+ "/html/assets/js/main.js";
%>
<%
String basePath6 = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path
		+ "/html/_06_hala/addhala.jsp";
%>
<%
String basePath8 = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path
		+ "/html/hala/updateHala.jsp";
%>
<!-- ????????????????????? -->
<%-- <%@ include file="/html/backMVC.jsp" %> --%>
<%-- <jsp:include page="/html/backMVC.jsp" flush="true" /> --%>
<!-- <meta charset="UTF-8"> -->
<!-- <title>Insert title here</title> -->
<title>??????????????? MEET BOTH</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />

<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta name="robots" content="index,follow" />
<meta name="description" content="??????????????????????????????????????????" />
<meta name="author" content="EEIT56-MEETBOTH" />
<meta name="keywords" content="???????????????????????????" />
<meta name="copyright" content="???????????????" />
<link rel="shortcut icon" href="<%=basePathimg%>" />
<link rel="bookmark" href="<%=basePathimg%>" />
<link rel="stylesheet" href="<%=basePath%>" />


</head>
<body class="is-preload">
	<!-- Wrapper -->
	<div id="wrapper">

		<div id="main">
			<div class="inner">
				<!-- Header -->
				<header id="header">
					<h1 class="logo">
						<strong>???????????????</strong>
					</h1>
				</header>

				<!-- Content -->
				<section>
					<header class="main">
						<h1>????????????</h1>
						<div>
							<form
								action="<c:url value='/_06_halaAndQa.goAddHala.controller'/>"
								method="GET">
								<input type="submit" value="????????????">
							</form>
						</div>
					</header>
					<header>
						<h4>????????????</h4>
						<form
							action="<c:url value='/_06_halaAndQa.SelectHalaClass.controller'/>"
							method="get">
							<select name="halaclassname" style="width: 40%">
								<option value="??????">??????</option>
								<option value="????????????">????????????</option>
								<option value="????????????">????????????</option>
								<option value="????????????">????????????</option>
								<option value="????????????">????????????</option>
								<option value="??????">??????</option>
							</select> <br> <input type="submit">
						</form>
					</header>
					<br>
					<div class="table-wrapper">
						<table class="alt">
							<thead>
								<tr>
									<th>????????????</th>
									<th>????????????</th>
									<th>????????????</th>
									<th>????????????</th>
									<th>????????????</th>
									<th>????????????</th>
									<th width=80px>??????</th>
									<th width=80xp>??????</th>
								</tr>
							</thead>
							<c:forEach var="bean" items="${classList}">
								<tbody>
									<tr>
										<td>${bean.halaid}</td>
										<td>${bean.halaclassname}</td>
										<td>${bean.memberid}</td>
										<td>${bean.title}</td>
										<td>${bean.postdate}</td>
										<td>${bean.halacontent}</td>
										<td><a
											href="<c:url value='/_06_halaAndQa.GoHalaUpdate.controller?halaid=${bean.halaid}'/>">
												<input type="button" value="??????">
										</a></td>
										<td>
											<button class="deleteThisHala" name="halaid"
												value="${bean.halaid}">
												<i class="fa-solid fa-xmark"></i>
											</button>
										</td>
									</tr>
								</tbody>
							</c:forEach>
						</table>
					</div>
				</section>
			</div>
		</div>

		<!-- Sidebar -->
		<div id="sidebar">
			<div class="inner">

				<!-- Search -->
				<!-- 				<section id="search" class="alt"> -->
				<!-- 					<form method="post" action="#"> -->
				<!-- 						<input type="text" name="query" id="query" placeholder="Search" /> -->
				<!-- 					</form> -->
				<!-- 				</section> -->

				<!-- Menu -->
				<nav id="menu">
					<header class="major">
						<h2>
							<img src="<%=basePathimg2%>" alt="" />
						</h2>
					</header>

					<ul>
						<li><a href="<c:url value='/index.controller' />">?????? <i class="fa-solid fa-house"></i></a></li>
						<li><a href="<c:url value='/backIndex.controller' />">???????????? <i
								class="fa-solid fa-gears"></i></a></li>
						<li><a href="<c:url value='/_01_member.admin' />">???????????? <i
								class="fa-solid fa-users-viewfinder"></i></a></li>
						<li><span class="opener">?????????????????? <i
								class="fa-solid fa-magnifying-glass-location"></i></span>
							<ul>
								<li><a href="<c:url value='/_02_subLocation.SelectAllSub.controller' />">????????????</a>
								<li><a href="<c:url value='/_02_subLocation.SelectAllLoc.controller' />">????????????</a>
							</ul></li>
						<li><a href="<c:url value='/_03_product.searchAllProduct.controller'/>">???????????? <i
								class="fa-solid fa-store"></i></a></li>
						<li><a
							href="<c:url value='/_04_shoppingCart.SelectAll.controller' />">????????????
								<i class="fa-solid fa-cart-shopping"></i>
						</a></li>
						<li><span class="opener">?????????????????? <i
								class="fa-solid fa-users"></i></span>
							<ul>
								<li><a href="<c:url value='/_05_teacStu.searchAllTeac.controller' />">??????????????????</a></li>
								<li><a href="<c:url value='/_05_teacStu.searchAllStud.controller' />">??????????????????</a></li>
							</ul></li>
						<li><span class="opener">????????? <i
								class="fa-solid fa-comments"></i></span>
							<ul>
								<li><a href="<c:url value='/_06_halaAndQa.SelectAllHala.controller' />">???????????????</a></li>
								<li><a href="<c:url value='/_06_halaAndQa.SelectAllQa.controller' />">Q&A?????????</a></li>
							</ul></li>
					</ul>
					
				</nav>


				<!-- Section -->
				<section>
					<header class="major">
						<h2>????????????</h2>
					</header>
					<p>????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????/?????????</p>
					<ul class="contact">
						<li class="icon solid fa-envelope"><a href="#">information@untitled.tld</a>
						</li>
						<li class="icon solid fa-phone">(000) 000-0000</li>
						<li class="icon solid fa-home">1234 Somewhere Road #8254<br />
							Nashville, TN 00000-0000
						</li>
					</ul>
				</section>

				<!-- Footer -->
				<footer id="footer">
					<p class="copyright">
						&copy; Untitled. All rights reserved. Demo Images: <a
							href="https://unsplash.com">Unsplash</a>. Design: <a
							href="https://html5up.net">HTML5 UP</a>.
					</p>
				</footer>
			</div>
		</div>
	</div>

	<!-- Scripts -->

	<%
	String basePathIndex1 = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path
			+ "/html/assets/js/jquery.min.js";
	%>

	<%
	String basePathIndex2 = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path
			+ "/html/assets/js/browser.min.js";
	%>

	<%
	String basePathIndex3 = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path
			+ "/html/assets/js/breakpoints.min.js";
	%>

	<%
	String basePathIndex4 = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path
			+ "/html/assets/js/util.js";
	%>

	<%
	String basePathIndex5 = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path
			+ "/html/assets/js/main.js";
	%>
	<script src=<%=basePathIndex1%>></script>
	<script src=<%=basePathIndex2%>></script>
	<script src=<%=basePathIndex3%>></script>
	<script src=<%=basePathIndex4%>></script>
	<script src=<%=basePathIndex5%>></script>
	<script src="https://kit.fontawesome.com/25590258af.js"
		crossorigin="anonymous"></script>
	<script>
        $(function(){
            $('.deleteThisHala').click(function(){
                let id=$(this).attr("value");
                Swal.fire({
                  title: '??????????????????????',
                  text: "???????????????????????????!!!",
                  icon: 'warning',
                  //icon:  "success", "error", "warning", "info" or "question" ???????????????
                  showCancelButton: true,
                  confirmButtonColor: 'lightred',
                  cancelButtonColor: 'lightgrey',
                  confirmButtonText: '????????????'
//                   cancelButtonText: '??????',
                }).then((result) => {
                    if (result.isConfirmed) {
                        $.ajax({
                          //????????????+servlet
                          url:'/SpringBoot_Team5/_06_halaAndQa.deketeHala.controller',
                          method:"get",
                          dataType:"text",
                          //??????name??????????????? ??????value?????????
                          data: {"halaid":id},
                        })
                            .done(function () {
                                location.reload();
                                console.log("delete")
                             })//done
                             .fail(function(error) {
                                 console.log(error)
                             })//fail end
                    }//if
                  })//then

              })//click end
        });
        //function end
    </script>
</body>
</html>
<!--      <td> -->
<%--                      <Form  action="<c:url value='/Servlet/searchAllTeacServlet' />"  --%>
<!--                             method="POST"> -->
<!--                                 ??????????????????: -->
<!--                         <select name='qty'> -->
<!--                            <option value="1">1</option> -->
<!--                            <option value="2">2</option> -->
<!--                            <option value="3">3</option> -->
<!--                            <option value="4">4</option> -->
<!--                            <option value="5">5</option> -->
<!--                            <option value="6">6</option> -->
<!--                            <option value="7">7</option> -->
<!--                            <option value="8">8</option> -->
<!--                            <option value="9">9</option> -->
<!--                            <option value="10">10</option> -->
<!--                        </select> -->
<!--                        ???????????????????????????????????? -->
<%--                        <Input type='hidden' name='bookId' value='${entry.value.bookId}'> --%>
<%--                        <Input type='hidden' name='pageNo' value='${param.pageNo}'> --%>
<!--                        <label><i class="fa-solid fa-cart-shopping"></i><Input type='submit' value='???????????????'> -->
<!--                        </label> -->
<!--                      </Form> -->
<!--     </td> -->