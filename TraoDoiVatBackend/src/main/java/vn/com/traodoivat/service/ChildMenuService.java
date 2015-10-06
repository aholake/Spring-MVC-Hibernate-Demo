package vn.com.traodoivat.service;

import java.util.List;

import vn.com.traodoivat.model.ChildMenu;

public interface ChildMenuService {
	public void inseredChildMenu(ChildMenu childMenu);

	public void updatedChildMenu(ChildMenu childMenu);

	public void deletedChildMenu(int cid);

	public List<ChildMenu> listChildMenu();
}
