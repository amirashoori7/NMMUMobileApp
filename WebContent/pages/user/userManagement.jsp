<%@page import="java.util.List"%>
<%@page import="common.PopupENT"%>
<%@page import="java.util.ArrayList"%>
<%@taglib uri="/WEB-INF/struts-html.tld" prefix="html"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@ taglib prefix="logic" uri="/WEB-INF/struts-logic.tld"%>
<%@taglib prefix="ams" uri="/WEB-INF/AMSTag.tld"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script>
	$(document).ready(function() {
		refreshPlaceHolders();
		refreshGrid();
	});
</script>
</head>
<body>
	<body>
	<form id="dataFilterGridMainPage" action="user.do">
		<ams:message messageEntity="${message}"></ams:message>
		<input type="hidden" name="reqCode" id="reqCode" value="userManagement">
		<input type="hidden" name="reqCodeGrid" id="reqCodeGrid" value="">
		<div class="ui-grid-a" id="searchFilters">
			<fieldset class="ui-grid-a">
				<div class="ui-block-a">
					<html:text name="userLST" property="searchUser.userName"
						onkeyup="refreshGrid();" title="Search"></html:text>
				</div>
				<div class="ui-block-b">
					<bean:define id="clientIdSelectedVal" name="userLST" property="searchUser.clientID"></bean:define>
					<ams:dropDown dropDownItems="${clientENTs}" name="clientID"
						selectedVal="<%=clientIdSelectedVal.toString() %>" onChange="refreshGrid()" title="Client"></ams:dropDown>
				</div>
			</fieldset>
		</div>
		<div class="ui-grid-solo">
			<bean:define id="totalRows" name="userLST" property="totalItems"
				type="java.lang.Integer"></bean:define>
			<bean:define id="first" name="userLST" property="first"
				type="java.lang.Integer"></bean:define>
			<bean:define id="currentPage" name="userLST" property="currentPage"
				type="java.lang.Integer"></bean:define>
			<bean:define id="pageSize" name="userLST" property="pageSize"
				type="java.lang.Integer"></bean:define>
			<bean:define id="totalPages" name="userLST" property="totalPages"
				type="java.lang.Integer"></bean:define>
			<ams:ajaxPaginate currentPage="<%=currentPage%>"
				pageSize="<%=pageSize%>" totalRows="<%=totalRows%>" align="center"
				columns="userID,userName,name,surName,dateOfBirth,registerationDate"
				popupID="userManagementSettingMenu"
				popupGridSettingItems="${gridMenuItem}"
				popupMenuSettingItems="${settingMenuItem}">
				<table id="gridList" class="display cell-border dt-body-center"
					cellspacing="0" width="100%">
					<thead>
						<tr>
							<th><input type="checkbox" id="checkAllHead"></th>   
							<th data-priority="1">name</th>
							<th data-priority="2">surname</th>
							<th data-priority="3">Username</th>
							<th data-priority="4">DOB</th>
							<th data-priority="5">Registeration Date</th>
						</tr>
					</thead>
					<tfoot>
						<tr>
						    <th></th>
							<th data-priority="1">name</th>
							<th data-priority="2">surname</th>
							<th data-priority="3">Username</th>
							<th data-priority="4">DOB</th>
							<th data-priority="5">Registeration Date</th>
						</tr>
					</tfoot>
				</table>
			</ams:ajaxPaginate>
		</div>
	</form>
</body>
</html>