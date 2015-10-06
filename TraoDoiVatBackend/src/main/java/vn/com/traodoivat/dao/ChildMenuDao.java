package vn.com.traodoivat.dao;

import java.util.List;

import vn.com.traodoivat.model.ChildMenu;

public interface ChildMenuDao {
	public void inseredChildMenu(ChildMenu childMenu);

	public void updatedChildMenu(ChildMenu childMenu);

	public void deletedChildMenu(int cid);

	public List<ChildMenu> listChildMenu();
}
