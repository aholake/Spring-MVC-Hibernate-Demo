package vn.com.traodoivat.dao;

import java.util.List;

import vn.com.traodoivat.model.Post;

public interface PostDao {
	public void insertPost(Post post);

	public void updatePost(Post post);

	public void deletePost(int pID);
	
	public List<Post> listPost();
}
