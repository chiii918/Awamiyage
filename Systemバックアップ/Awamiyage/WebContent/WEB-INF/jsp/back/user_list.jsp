<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@page import="bean.Users"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>

<%
	//サーブレットのリクエストからMakers Beanのリストを取得する
	List<Users> users_list = new ArrayList();
	users_list = (List<Users>) request.getAttribute("users_list");
%>

<%@ include file="../template/header_back.jsp" %>


		<table class="list__table">
			<caption class="list__title">ユーザー一覧</caption>
			<caption class="list__count">
				ユーザー登録件数：<%=users_list.size()%></caption>
			<tr>
				<th class="list__th">ユーザーID</th>
				<th class="list__th--company">ユーザー名</th>
			</tr>
			<%
				for(Users u : users_list ) {
			%>
			<tr>
				<td class="list__td"><%=u.getUsers_id()%></td>
				<td class="list__td">
					<p><%=u.getUsers_nickname()%></p>
				</td>
			</tr>
			<%
				}
			%>
		</table>
	</div>


<%@ include file="../template/footer_back.jsp" %>