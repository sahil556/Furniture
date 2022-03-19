package com.project.furniture;

import static org.assertj.core.api.Assertions.assertThat;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.jdbc.AutoConfigureTestDatabase;
import org.springframework.boot.test.autoconfigure.jdbc.AutoConfigureTestDatabase.Replace;
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest;
import org.springframework.boot.test.autoconfigure.orm.jpa.TestEntityManager;
import org.springframework.test.annotation.Rollback;

import com.project.furniture.model.User;
import com.project.furniture.repository.UserRepo;

@DataJpaTest
@AutoConfigureTestDatabase(replace = Replace.NONE)
@Rollback(false)
public class UserRepoTest {
	@Autowired
	private UserRepo repo;
	
	@Autowired
	private TestEntityManager entitymanager;
	
	@Test
	public void testcreateUser()
	{
		User user = new User();
		user.setEmail("sagar@gmail.com");
		user.setFirstname("sagar");
		user.setLastname("patel");
		user.setAddress("rajkot");
		user.setPassword("sahil");
		user.setPincode(361160);
		
		User saveUser = repo.save(user);
		User existuser = entitymanager.find(User.class, saveUser.getId());
		
		assertThat(existuser.getEmail().equals(user.getEmail()));
		
	}

}
