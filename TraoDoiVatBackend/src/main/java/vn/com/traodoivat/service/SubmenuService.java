package vn.com.traodoivat.service;

import java.util.List;

import vn.com.traodoivat.model.Submenu;

public interface SubmenuService {
	public void insertSubmenu(Submenu submenu);

	public void updateSubmenu(Submenu submenu);

	public void deleteSubmenu(int sID);

	public List<Submenu> listSubmenu();
}
