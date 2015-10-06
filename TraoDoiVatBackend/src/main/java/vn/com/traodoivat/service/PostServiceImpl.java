package vn.com.traodoivat.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import vn.com.traodoivat.dao.PostDao;
import vn.com.traodoivat.model.Post;

@Service
public class PostServiceImpl implements PostService {

	@Autowired
	private PostDao postDao;

	@Override
	@Transactional
	public void insertPost(Post post) {
		// TODO Auto-generated method stub
		this.postDao.insertPost(post);
	}

	@Override
	@Transactional
	public void updatePost(Post post) {
		// TODO Auto-generated method stub
		this.postDao.updatePost(post);
	}

	@Override
	@Transactional
	public void deletePost(int pID) {
		// TODO Auto-generated method stub
		this.postDao.deletePost(pID);
	}

	@Override
	@Transactional
	public List<Post> listPost() {
		// TODO Auto-generated method stub
		return this.postDao.listPost();
	}

}
