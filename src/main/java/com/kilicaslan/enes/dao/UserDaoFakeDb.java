package com.kilicaslan.enes.dao;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.kilicaslan.enes.entity.User;


@Repository
@Qualifier("fakeDb")
public class UserDaoFakeDb implements UserDao {
	
	private static Map<Integer, User> users;

	static {
		users = new HashMap<Integer, User>() {
			{
				put(1, new User(1, "Enes", "Kilicaslan", "hanky", "1234", "admin"));
				put(2, new User(2, "Mulayim", "Bombaci", "bomb", "1234", "regular"));
				put(3, new User(3, "Bob", "Marley", "marly", "1234", "regular"));
				put(4, new User(4, "Ali", "Desidero", "mfo", "1234", "regular"));	
			}
		};
	}
	
	/* (non-Javadoc)
	 * @see com.kilicaslan.enes.dao.UserDao#getUsers()
	 */
	@Override
	public Collection<User> getUsers(){
		return this.users.values();
	}
	
	/* (non-Javadoc)
	 * @see com.kilicaslan.enes.dao.UserDao#getUser(int)
	 */
	@Override
	public User getUser(int id) {
		return users.get(id);
	}

	/* (non-Javadoc)
	 * @see com.kilicaslan.enes.dao.UserDao#deleteUser(int)
	 */
	@Override
	public void deleteUser(int id) {
		users.remove(id);
	}
	
	/* (non-Javadoc)
	 * @see com.kilicaslan.enes.dao.UserDao#updateUser(com.kilicaslan.enes.entity.User)
	 */
	@Override
	public void updateUser(User other) {
		
		User user = new User();
		
		// we can cread a constructor which makes a deep copy
		user.setId(other.getId());
		user.setFirstName(other.getFirstName());
		user.setLastName(other.getLastName());
		user.setUserName(other.getUserName());
		user.setPassword(other.getPassword());
		user.setRole(other.getRole());

		this.users.put(user.getId(), user);
		
	}

	/* (non-Javadoc)
	 * @see com.kilicaslan.enes.dao.UserDao#addUser(com.kilicaslan.enes.entity.User)
	 */
	@Override
	public void addUser(User user) {
		this.users.put(user.getId(), user);
	}
	
}
