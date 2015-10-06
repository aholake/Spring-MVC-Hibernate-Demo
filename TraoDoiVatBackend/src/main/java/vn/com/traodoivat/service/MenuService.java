package vn.com.traodoivat.service;

import java.util.List;

import vn.com.traodoivat.model.Menu;

public interface MenuService {
	public void insertMenu(Menu menu);

	public void updateMenu(Menu menu);

	public void deleteMenu(int menuID);

	public List<Menu> listMenu();
}
