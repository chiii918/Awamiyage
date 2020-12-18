<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="bean.Reports"%>

<%
	List<Reports> reports_list = new ArrayList();
	reports_list = (List<Reports>) request.getAttribute("reports_list");
%>
<%@ include file="../template/header_back.jsp" %>


		<table class="list__table">
			<caption class="list__title">試食記事一覧</caption>
			<caption class="list__count">
				試食記事登録件数：<%=reports_list.size()%></caption>
			<tr>
				<th class="list__th">試食記事ID</th>
				<th class="list__th--company">試食記事タイトル</th>
			</tr>

	<%
		for (Reports r : reports_list) {
	%>
	<tr>
		<td class="list__td"><%=r.getReports_id()%></td>
		<td class="list__td">
			<a href="./PageControlBack?pg_id=506&rp_id=<%=r.getReports_id()%>"><%=r.getReports_name()%></a>
		</td>
		<%
			}
		%>
	</table>
</div>

<%@ include file="../template/footer_back.jsp" %>