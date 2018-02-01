package com.kilicaslan.enes.dao;

import java.util.ArrayList;
import java.util.Collection;

import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.kilicaslan.enes.entity.User;



@Repository
@Qualifier("mysqlDb")
public class UserDaoMysqlDb implements UserDao {

	@Override
	public Collection<User> getUsers() {
		return new ArrayList<User>() {
			{
				add(0, new User(1, "Bob", "Marley", "hanky", "1234", "admin"));
				
			}
		};
		
	}

	@Override
	public User getUser(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void deleteUser(int id) {
		// TODO Auto-generated method stub

	}

	@Override
	public void updateUser(User other) {
		// TODO Auto-generated method stub

	}

	@Override
	public void addUser(User user) {
		// TODO Auto-generated method stub

	}

}
