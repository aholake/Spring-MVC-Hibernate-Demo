package vn.com.traodoivat.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import vn.com.traodoivat.dao.ChildMenuDao;
import vn.com.traodoivat.model.ChildMenu;

@Service
public class ChildMenuServiceImpl implements ChildMenuService {

	@Autowired
	private ChildMenuDao childmenuDao;

	@Override
	@Transactional
	public void inseredChildMenu(ChildMenu childMenu) {
		// TODO Auto-generated method stub
		this.childmenuDao.inseredChildMenu(childMenu);
	}

	@Override
	@Transactional
	public void updatedChildMenu(ChildMenu childMenu) {
		// TODO Auto-generated method stub
		this.childmenuDao.updatedChildMenu(childMenu);
	}

	@Override
	@Transactional
	public void deletedChildMenu(int cid) {
		// TODO Auto-generated method stub
		this.childmenuDao.deletedChildMenu(cid);
	}

	@Override
	@Transactional
	public List<ChildMenu> listChildMenu() {
		// TODO Auto-generated method stub
		return this.childmenuDao.listChildMenu();
	}

}
