<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../header_front.jsp"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="websys2.bean.Products"%>

<%
	List<Products> products_list = new ArrayList();
	products_list = (List<Products>) request.getAttribute("products_list");
%>


<h1>味別</h1>

<form method="post" id="taste_list">
	<label><input type="radio" class="radio" name="taste" value="1" >甘い</label>
	<label><input type="radio" class="radio" name="taste" value="2" >しょっぱい</label>
	<label><input type="radio" class="radio" name="taste" value="3" >辛い</label>
	<label><input type="radio" class="radio" name="taste" value="4" >その他</label>
</form>



<h2>検索結果</h2>
<!-- Ajaxの通信結果がdivの中に格納される -->
<div>
	<%
		if (request != null && products_list != null) {
			if (products_list.size() > 0) {
	%>

				<%
					for (Products p : products_list) {
				%>
					<a href="./PageControlFront?pg_id=113&from=5&pd_id=<%=p.getProducts_id()%>"><%=p.getProducts_name()%></a>
					<img src="<%=p.getProducts_eyecatch()%>" alt="写真1">
					<p><%=p.getCategorys_name()%></p>
					<p><%=p.getProducts_taste()%></p>
				<%
					}
	%>

	<%
			}
		}
	%>
</div>

<%@ include file="../footer_front.jsp"%>