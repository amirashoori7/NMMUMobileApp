/*
 * Generated by MyEclipse Struts
 * Template path: templates/java/JavaClass.vtl
 */
package struts.actions;

import hibernate.client.ClientDAOInterface;
import hibernate.config.NMMUMobileDAOManager;
import hibernate.security.SecurityDAOInterface;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import tools.AMSException;

import common.security.RoleENT;
import common.security.RoleLST;

/**
 * MyEclipse Struts Creation date: 09-21-2010
 * 
 * XDoclet definition:
 * 
 * @struts.action parameter="reqCode" validate="true"
 * @struts.action-forward name="list" path="/jsp/farsi/news/newsList.jsp"
 */
public class LocationAction extends Action {
	private String success = "";
	private String error = "";

	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		ActionForward af = null;
		String reqCode = request.getParameter("reqCode");
		if (reqCode == null || reqCode.equalsIgnoreCase("roleManagement")
				|| reqCode.equals("roleGrid")) {
			try {
				if (reqCode.equalsIgnoreCase("roleManagement"))
					request.setAttribute("clientENTs", getClientDAO()
							.getAllClients(""));
				RoleLST roleLST = getRoleLST(request);
				request.setAttribute("roleLST", roleLST);
			} catch (AMSException e) {
				e.printStackTrace();
			}
			if (reqCode.equals("roleGrid"))
				return mapping.findForward("roleGrid");
			else
				return mapping.findForward("roleManagement");
		} else if (reqCode.equals("roleEdit")) {
			RoleENT roleENT = new RoleENT();
			int roleId = 0;
			try {
				request.setAttribute("clientENTs", getClientDAO()
						.getAllClients(""));
			} catch (AMSException e) {
				e.printStackTrace();
			}
			if (request.getParameter("roleID") != null)
				roleId = Integer.parseInt(request.getParameter("roleID"));
			else {
				request.setAttribute("roleENT", roleENT);
				return mapping.findForward("roleEdit");
			}
			roleENT.setRoleID(roleId);
			try {
				request.setAttribute("roleENT",
						getSecurityDAO().getRole(roleENT));
			} catch (AMSException e) {
				error = e.getMessage();
				e.printStackTrace();
			}
			return mapping.findForward("roleEdit");
		} else if (reqCode.equals("saveUpdate")) {
			try {
				request.setAttribute("clientENTs", getClientDAO()
						.getAllClients(""));
			} catch (AMSException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
			RoleENT roleENT = getRoleENT(request);
			try {
				roleENT = getSecurityDAO().saveUpdateRole(roleENT);
				request.setAttribute("roleENT",
						roleENT);
			} catch (AMSException e) {
				e.printStackTrace();
			}
			return mapping.findForward("roleEdit");
		}
		request.setAttribute("error", error);
		request.setAttribute("success", success);
		return af;
	}

	private RoleENT getRoleENT(HttpServletRequest request) {
		RoleENT roleENT = new RoleENT();
		if (request.getParameter("clientID") != null)
			roleENT.setClientID(Integer.parseInt(request
					.getParameter("clientID")));
		if (request.getParameter("roleID") != null)
			roleENT.setRoleID(Integer.parseInt(request.getParameter("roleID")));
		else
			roleENT.setRoleID(0);
		roleENT.setRoleName(request.getParameter("roleName"));
		roleENT.setComment(request.getParameter("comment"));
		return roleENT;
	}

	private RoleLST getRoleLST(HttpServletRequest request) {
		String search = request.getParameter("searchKey");
		if (search == null)
			search = "";
		RoleENT roleENT = new RoleENT();
		int pageNo = 0;
		if (request.getParameter("page") != null)
			pageNo = Integer.parseInt(request.getParameter("page"));
		int clientID = 0;
		if (request.getParameter("clientID") != null)
			clientID = Integer.parseInt(request.getParameter("clientID"));
		roleENT.setClientID(clientID);
		roleENT.setComment(search);
		roleENT.setRoleName(search);
		RoleLST roleLST = new RoleLST();
		roleLST.setSearchRole(roleENT);
		roleLST.setCurrentPage(pageNo);
		try {
			roleLST = getSecurityDAO().getRolesList(roleLST);
		} catch (AMSException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return roleLST;
	}

	private static SecurityDAOInterface getSecurityDAO() {
		return NMMUMobileDAOManager.getSecuirtyDAOInterface();
	}

	private static ClientDAOInterface getClientDAO() {
		return NMMUMobileDAOManager.getClientDAOInterface();
	}
}