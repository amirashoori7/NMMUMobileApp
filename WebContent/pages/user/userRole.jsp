<%@page import="javax.management.relation.RoleList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@ taglib prefix="logic" uri="/WEB-INF/struts-logic.tld"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<html>
<head>
</head>
<body>
	<form id="dataFilterGridMainPage" action="user.do">
		<input type="hidden" name="userID"
			value="<%=request.getParameter("userID")%>"> <input
			type="hidden" name="reqCode" value="userRoleView"> Roles for
		user "
		<bean:write name="userENT" property="userName" />
		"
		
        <input type="search" name="searchKey" id="searchKey" value="" onkeyup="<%refreshGrid();%>">
		<table data-role="table" id="table-column-toggle"
			class="ui-responsive table-stroke">
			<tbody>
				<tr>
					<logic:iterate id="rolesListIteration" indexId="rowId"
						name="rolesList" property="roleENTs"
						type="common.security.RoleENT">

						<%
							int counter;
								int idcount;
								counter = rowId % 3;
								{
						%>
						<td><label> <logic:iterate id="userRoleIds"
									name="userRoles" type="common.security.RoleENT">
									<input type="checkbox"
										value="<%=rolesListIteration.getRoleID()%>"
										<%if (rolesListIteration.getRoleID() == userRoleIds
								.getRoleID()) {%>
										checked="checked" <%}%> data-inline="true">
								</logic:iterate> <%=rolesListIteration.getRoleName()%>
						</label></td>
						<%
							if (counter == 2) {
						%>
					
				</tr>
				<tr>
					<%
						}
							}
					%>

					</logic:iterate>
			</tbody>
		</table>


	</form>
</body>

</html>