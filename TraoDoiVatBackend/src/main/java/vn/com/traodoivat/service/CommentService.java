package vn.com.traodoivat.service;

import vn.com.traodoivat.model.Comment;

public interface CommentService {
	public void insertComment(Comment comment);

	public void updateComment(Comment comment);

	public void deletecomment(int cID);
}
