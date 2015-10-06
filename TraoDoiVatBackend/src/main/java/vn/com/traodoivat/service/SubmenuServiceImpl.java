package vn.com.traodoivat.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import vn.com.traodoivat.dao.SubmenuDao;
import vn.com.traodoivat.model.Submenu;

@Service
public class SubmenuServiceImpl implements SubmenuService {

	@Autowired
	private SubmenuDao submenuDao;

	@Override
	@Transactional
	public void insertSubmenu(Submenu submenu) {
		// TODO Auto-generated method stub
		this.submenuDao.insertSubmenu(submenu);
	}

	@Override
	@Transactional
	public void updateSubmenu(Submenu submenu) {
		// TODO Auto-generated method stub
		this.submenuDao.updateSubmenu(submenu);
	}

	@Override
	@Transactional
	public void deleteSubmenu(int sID) {
		// TODO Auto-generated method stub
		this.submenuDao.deleteSubmenu(sID);
	}

	@Override
	@Transactional
	public List<Submenu> listSubmenu() {
		// TODO Auto-generated method stub
		return this.submenuDao.listSubmenu();
	}

}
