package vn.com.traodoivat.controller;

public class URLFinalController {
	public static final String HOME = "/";
	
	/*
	 * Child
	 */
	public static final String INSERTCHILDMENU = "/rest/insertChildMenu";
	public static final String UPDATECHILDMENU = "/rest/updateChildMenu/{cId}";
	public static final String DELETECHILDMENU = "/rest/deleteChildMenu/{cId}";
	public static final String GETCHILDMENUBYID = "/rest/getChildMenuById/{cId}";
	public static final String LISTCHILDMENU = "/rest/listChildMenu";
	
	/*
	 * Menu
	 */
	public static final String INSERTMENU = "/rest/insertMenu";
	public static final String UPDATEMENU = "/rest/updateMenu/{mId}";
	public static final String DELETEMENU = "/rest/deleteMenu/{mId}";
	public static final String GETMENUBYID = "/rest/getMenuById/{mId}";
	public static final String LISTMENU = "/rest/listMenu";
	
	/*
	 * Sub
	 */
	public static final String INSERTSUBMENU = "/rest/insertSubmenu";
	public static final String UPDATESUBMENU = "/rest/updateSubmenu/{sId}";
	public static final String DELETESUBMENU = "/rest/deleteSubmenu/{sId}";
	public static final String GETSUBMENUBYID = "/rest/getSubmenuById/{sId}";
	public static final String LISTSUBMENU = "/rest/listSubmenu";
	
	/*
	 * Member
	 */
	public static final String INSERTMEMBER = "/rest/insertMember";
	public static final String UPDATEMEMBER = "/rest/updateMember/{memId}";
	public static final String DELETEMEMBER = "/rest/deleteMember/{memId}";
	public static final String GETMEMBERBYID = "/rest/getMemberById/{memId}";
	public static final String LISTMEMBER = "/rest/listMember";
	
	/*
	 * Post
	 */
	public static final String INSERTPOST = "/rest/insertPost";
	public static final String UPDATEPOST = "/rest/updatePost/{pID}";
	public static final String DELETEPOST = "/rest/deletePost/{pID}";
	public static final String GETPOSTBYID = "/rest/getPostById/{pID}";
	public static final String LISTPOST = "/rest/listPost";

}
