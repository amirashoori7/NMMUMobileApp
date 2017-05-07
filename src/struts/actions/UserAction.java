 /*
 * Generated by MyEclipse Struts
 * Template path: templates/java/JavaClass.vtl
 */
package struts.actions;

import hibernate.client.ClientDAOInterface;
import hibernate.config.NMMUMobileDAOManager;
import hibernate.security.SecurityDAOInterface;
import hibernate.user.UserDAOInterface;

import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.codehaus.jackson.JsonGenerationException;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.ObjectMapper;

import tools.AMSErrorHandler;
import tools.AMSException;
import tools.AMSUtililies;

import common.DropDownENT;
import common.MessageENT;
import common.PopupENT;
import common.security.GroupENT;
import common.security.GroupLST;
import common.security.RoleENT;
import common.security.RoleLST;
import common.user.UserENT;
import common.user.UserLST;

/**
 * MyEclipse Struts Creation date: 09-21-2010
 * 
 * XDoclet definition:
 * 
 * @struts.action parameter="reqCode" validate="true"
 * @struts.action-forward name="list" path="/jsp/farsi/news/newsList.jsp"
 */
public class UserAction extends Action {
	private static String success = "";
	private static String error = "";
	private String reqCode = "";

	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		ActionForward af = null;
		String reqCode = request.getParameter("reqCode");

		String success = "";
		String error = "";
		if (reqCode == null)
		{
			reqCode = "userManagement";
		}
			if (reqCode.equalsIgnoreCase("deleteUser")) {
			deleteUser(request);
			reqCode = "userManagement";
		}
		if (reqCode.equalsIgnoreCase("userManagement")
				|| reqCode.equals("gridJson")) {
			return userManagement(request, mapping); 
		} else if (reqCode.equals("userEdit")) {
			return editUser(request, mapping, form);

		} else if (reqCode.equals("userSaveUpdate")) {
			return saveUpdateUser(request, mapping);
		}

		if (reqCode.equalsIgnoreCase("userRoleView")) {
		    return userRoleView(request,mapping);
		}
		if (reqCode.equalsIgnoreCase("userGroupView")) {
		    return userGroupView(request,mapping);
		}


		return af;
	}
	private ActionForward userGroupView(HttpServletRequest request,
			ActionMapping mapping) {
		try {
			UserENT u = getUserDAO().getUserENT(
					new UserENT("", Integer.parseInt(request
							.getParameter("userID"))));
			request.setAttribute("userENT", u);
			GroupLST groupLST = new GroupLST();
			String searchKey = "";
			
			if(request.getParameter("search")!=null)
				searchKey = request.getParameter("search");
			groupLST.setSearchGroup(new GroupENT(0, searchKey, 0, "", ""));
			groupLST.setPageSize(400);
			GroupLST groups = getSecurityDAO().getGroupList(groupLST);
			request.setAttribute("userGroups", getUserDAO().getAllGroupsUser(u.getUserID()));
			request.setAttribute("groupsList", groups);
			return mapping.findForward("userGroup");
		} catch (NumberFormatException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (AMSException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return null;
			}

	private ActionForward userRoleView(HttpServletRequest request,
			ActionMapping mapping) {
		try {
			UserENT u = getUserDAO().getUserENT(
					new UserENT("", Integer.parseInt(request
							.getParameter("userID"))));
			request.setAttribute("userENT", u);
			RoleLST roleLST = new RoleLST();
			String searchKey = "";
			if(request.getParameter("searchKey")!=null)
				searchKey = request.getParameter("searchKey");
			roleLST.setSearchRole(new RoleENT(0, searchKey, 0, "", ""));
			roleLST.setPageSize(400);
			RoleLST roles = getSecurityDAO().getRolesList(roleLST);
			request.setAttribute("userRoles", getUserDAO().getAllRolesUser(u.getUserID()));
			request.setAttribute("rolesList", roles);
			return mapping.findForward("userRole");
		} catch (NumberFormatException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (AMSException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return  null;
			}

	private ActionForward userManagement(HttpServletRequest request,
			ActionMapping mapping) {
		try {
			createMenusForUser(request);
			request.setAttribute("clientENTs", getClientDAO()
					.getClientsDropDown());
			UserLST userLST = getUserLST(request);
			request.setAttribute("userLST", userLST);
			ObjectMapper mapper = new ObjectMapper();
			String json = "";
			try {
				json = mapper.writeValueAsString(userLST.getUserENTs());
			} catch (JsonGenerationException e) {
				e.printStackTrace();
			} catch (JsonMappingException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
			json = AMSUtililies.prepareTheJSONStringForDataTable(
					userLST.getCurrentPage(), userLST.getTotalItems(), json,
					"userID", success, error);
			request.setAttribute("json", json);
			MessageENT m = new MessageENT(success, error);
			request.setAttribute("message", m);
			if (request.getParameter("reqCodeGrid") != null
					&& request.getParameter("reqCodeGrid").equals("gridJson"))
				return mapping.findForward("gridJson");
		} catch (AMSException e) {
			e.printStackTrace();
		}
		return mapping.findForward("userManagement");
	}

	private ActionForward editUser(HttpServletRequest request,
			ActionMapping mapping, ActionForm form) {
		UserENT userENT = new UserENT();
		int userId ;
		try {
			request.setAttribute("clientENTs", getClientDAO()
					.getClientsDropDown());
			request.setAttribute("titleENTs", getUserDAO().getTitlesDropDown());
			request.setAttribute("ethnicENTs", getUserDAO()
					.getEthnicsDropDown());
		} catch (AMSException e) {
			e.printStackTrace();
		}
		if (request.getParameter("userID") != null) {
			userId = Integer.parseInt(request.getParameter("userID"));
		} else {
			request.setAttribute("userENT", userENT);
			return mapping.findForward("userEdit");
		}
		userENT.setUserID(userId);
		try {
			request.setAttribute("userENT", getUserDAO().getUserENT(userENT));
		} catch (AMSException e) {
			error = e.getMessage();
			e.printStackTrace();
		}
		MessageENT m = new MessageENT(success, error);
		request.setAttribute("message", m);
		return mapping.findForward("userEdit");
	}

	private void createMenusForUser(HttpServletRequest request) {
		List<PopupENT> popupEnts = new ArrayList<PopupENT>();
		popupEnts.add(new PopupENT("", "displaySearch();", "Show/Hide Search",
				"#"));
		popupEnts
				.add(new PopupENT("",
						"callAnAction(\"user.do?reqCode=userEdit\");",
						"New User", "#"));
		popupEnts.add(new PopupENT("", "deleteSelectedItems(\"deleteUser\");",
				"Delete Selected", "#"));
		List<PopupENT> popupGridEnts = new ArrayList<PopupENT>();
		popupGridEnts.add(new PopupENT("",
				"callAnAction(\"user.do?reqCode=userEdit&userID=REPLACEME\");",
				"Edit User", "#"));
		popupGridEnts.add(new PopupENT("",
				"deleteAnItem(REPLACEME, \"deleteUser\");", "Remove", "#")); //
		request.setAttribute("settingMenuItem", popupEnts);
		request.setAttribute("gridMenuItem", popupGridEnts);
	}

	private ActionForward saveUpdateUser(HttpServletRequest request,
			ActionMapping mapping) {
		try {
			request.setAttribute("clientENTs", getClientDAO()
					.getClientsDropDown());
			request.setAttribute("titleENTs", getUserDAO()
					.getTitlesDropDown());
			request.setAttribute("ethnicENTs", getUserDAO()
					.getEthnicsDropDown());
		
		
		} catch (AMSException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		UserENT userENT = getUserENT(request);
		try {
			userENT = getUserDAO().saveUpdateUser(userENT);
			success = "The user '" + userENT.getUserName()
					+ "' saved successfully";
		} catch (AMSException e) {
			error = AMSErrorHandler.handle(request, this, e, "", "");
		}
		request.setAttribute("userENT", userENT);
		MessageENT m = new MessageENT(success, error);
		request.setAttribute("message", m);
		return mapping.findForward("userEdit");
	}

	private void deleteUser(HttpServletRequest request) {
		String[] delID = request.getParameter("deleteID").split(",");
		ArrayList<UserENT> usersToDelete = new ArrayList<UserENT>();
		for (int i = 0; i < delID.length; i++) {
			UserENT user = new UserENT( "", Integer.parseInt(delID[i]));
			usersToDelete.add(user);
			try {
				getUserDAO().deleteUsers(usersToDelete);
				success = "The user(s) removed successfully";
			} catch (AMSException e) {
				e.printStackTrace();
				error = AMSErrorHandler.handle(request, this, e, "", "");
			}

		}
	}

	private UserENT getUserENT(HttpServletRequest request) {
		// date format for registration date
		DateFormat df = new SimpleDateFormat("MM/dd/yyyy HH:mm:ss");

		UserENT userENT = new UserENT();
		if (request.getParameter("clientID") != null)
			userENT.setClientID(Integer.parseInt(request
					.getParameter("clientID")));
		if (request.getParameter("userID") != null)
			userENT.setUserID(Integer.parseInt(request.getParameter("userID")));
		else {
			userENT.setUserID(0);
			
		}
		if (userENT.getRegisterationDate() == null)
			userENT.setRegisterationDate(df.format(Calendar.getInstance().getTime()));
		if (request.getParameter("ethnicID") != null)
			userENT.setEthnicID(Integer.parseInt(request
					.getParameter("ethnicID")));
		if (request.getParameter("titleID") != null)
			userENT.setTitleID(Integer.parseInt(request.getParameter("titleID")));

		userENT.setUserName(request.getParameter("userName"));
		userENT.setName(request.getParameter("name"));
		userENT.setSurName(request.getParameter("surName"));
		userENT.setDateOfBirth(request.getParameter("dateOfBirth"));

		userENT.setPassword(request.getParameter("password"));

		if (request.getParameter("gender") != null) {
			userENT.setGender(true);
		} else {
			userENT.setGender(false);
		}
		if (request.getParameter("active") != null)
			userENT.setActive(true);
		else
			userENT.setActive(false);

		return userENT;
	}

	private UserLST getUserLST(HttpServletRequest request) {
		String search = request.getParameter("searchUser.userName");
		if (search == null)
			search = "";
		UserENT userENT = new UserENT();
		int pageNo = 1;
		int pageSize = 10;
		if (request.getParameter("currentPage") != null)
			pageNo = Integer.parseInt(request.getParameter("currentPage"));
		if (request.getParameter("pageSize") != null)
			pageSize = Integer.parseInt(request.getParameter("pageSize"));
		int clientID = 0;
		if (request.getParameter("clientID") != null
				&& !request.getParameter("clientID").equals(""))
			clientID = Integer.parseInt(request.getParameter("clientID"));
		userENT.setClientID(clientID);
		userENT.setUserName(search);
		UserLST userLST = new UserLST();
		userLST.setPageSize(pageSize);
		userLST.setSearchUser(userENT);
		userLST.setCurrentPage(pageNo);
		try {
			userLST = getUserDAO().getUserLST(userLST);
		} catch (AMSException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return userLST;
	}

	private static ClientDAOInterface getClientDAO() {
		return NMMUMobileDAOManager.getClientDAOInterface();
	}

	private static SecurityDAOInterface getSecurityDAO() {
		return NMMUMobileDAOManager.getSecuirtyDAOInterface();
	}

	private static UserDAOInterface getUserDAO() {
		return NMMUMobileDAOManager.getUserDAOInterface();
	}
}