package vn.com.traodoivat.dao;

import java.util.List;

import vn.com.traodoivat.model.Menu;

public interface MenuDao {
	public void insertMenu(Menu menu);

	public void updateMenu(Menu menu);

	public void deleteMenu(int menuID);

	public List<Menu> listMenu();
}
