package vn.com.traodoivat.dao;

import java.util.List;

import vn.com.traodoivat.model.Submenu;

public interface SubmenuDao {
	public void insertSubmenu(Submenu submenu);

	public void updateSubmenu(Submenu submenu);

	public void deleteSubmenu(int sID);

	public List<Submenu> listSubmenu();
}
