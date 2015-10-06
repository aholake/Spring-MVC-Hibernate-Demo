package vn.com.traodoivat.dao;

import vn.com.traodoivat.model.Comment;

public interface CommentDao {
	public void insertComment(Comment comment);

	public void updateComment(Comment comment);

	public void deletecomment(int cID);

}
