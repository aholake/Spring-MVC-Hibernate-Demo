package vn.com.traodoivat.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import vn.com.traodoivat.dao.CommentDao;
import vn.com.traodoivat.model.Comment;

@Service
public class CommentServiceImpl implements CommentService {

	@Autowired
	private CommentDao commentDao;

	@Override
	@Transactional
	public void insertComment(Comment comment) {
		// TODO Auto-generated method stub
		this.commentDao.insertComment(comment);
	}

	@Override
	@Transactional
	public void updateComment(Comment comment) {
		// TODO Auto-generated method stub
		this.commentDao.updateComment(comment);
	}

	@Override
	@Transactional
	public void deletecomment(int cID) {
		// TODO Auto-generated method stub
		this.commentDao.deletecomment(cID);
	}

}
