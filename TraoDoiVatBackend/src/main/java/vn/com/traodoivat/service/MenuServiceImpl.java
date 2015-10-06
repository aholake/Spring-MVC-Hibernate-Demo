package vn.com.traodoivat.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import vn.com.traodoivat.dao.MenuDao;
import vn.com.traodoivat.model.Menu;

@Service
public class MenuServiceImpl implements MenuService {

	@Autowired
	private MenuDao menuDao;

	@Override
	@Transactional
	public void insertMenu(Menu menu) {
		// TODO Auto-generated method stub
		this.menuDao.insertMenu(menu);
	}

	@Override
	@Transactional
	public void updateMenu(Menu menu) {
		// TODO Auto-generated method stub
		this.menuDao.updateMenu(menu);
	}

	@Override
	@Transactional
	public void deleteMenu(int menuID) {
		// TODO Auto-generated method stub
		this.menuDao.deleteMenu(menuID);
	}

	@Override
	@Transactional
	public List<Menu> listMenu() {
		// TODO Auto-generated method stub
		return this.menuDao.listMenu();
	}

}
