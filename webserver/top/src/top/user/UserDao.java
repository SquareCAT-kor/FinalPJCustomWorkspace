package top.user;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import top.frame.Dao;
import top.mapper.UserMapper;
import top.model.User;


@Repository("udao")
public class UserDao implements Dao<String, User > {
	@Autowired
	UserMapper um;
	
	// Login ÇÒ¶§ 
	@Override
	public User select(String u_id) {
		return um.select(u_id);
	}
	
	
	@Override
	public void insert(User v) throws Exception {
		um.insert(v);
	}


	@Override
	public ArrayList<User> selectall() {
		return null;
	}

	
	
	
}
