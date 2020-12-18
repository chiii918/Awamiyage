<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@page import="bean.Makers"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>

<%
	//サーブレットのリクエストからMakers Beanのリストを取得する
	List<Makers> makers_list = new ArrayList();
	makers_list = (List<Makers>) request.getAttribute("makers_list");
%>

<%@ include file="../template/header_back.jsp"%>


		<table class="list__table">

			<caption class="list__title">メーカー一覧</caption>
			<caption class="list__count">
				メーカー登録件数：<%=makers_list.size()%></caption>

			<tr>
				<th class="list__th">メーカーID</th>
				<th class="list__th--company">社名</th>
			</tr>
			<%
				for(Makers m : makers_list ) {
			%>
			<tr>
				<td class="list__td"><%=m.getMakers_id()%></td>
				<td class="list__td">
					<a href="./PageControlBack?pg_id=518&mk_id=<%=m.getMakers_id()%>"><%=m.getMakers_name()%></a>
				</td>
			</tr>
			<%
				}
			%>
		</table>
	</div>

<%@ include file="../template/footer_back.jsp" %>