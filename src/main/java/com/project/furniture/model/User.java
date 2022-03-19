package com.project.furniture.model;


import com.fasterxml.jackson.annotation.JsonIgnore;

import java.util.List;

import javax.persistence.*;

@Entity
@Table(name="users")
public class User {
      
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    
    @Column(name="email", nullable = false, unique = true)
    private String email;
    
    @Column(name="firstname", nullable = false)
    private String firstname;
    
    @Column(name="lastname")
    private String lastname;
    
    @Column(name="password",  nullable = false)
    private String password;
    
    @Column(name="address",  nullable = false)
    private String address;
    
    @Column(name="pincode",  nullable = false)
    private int pincode;
    
    @Column(name = "role")
    private String role="user";
    
    public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	@JsonIgnore
    @OneToMany(mappedBy = "user", fetch = FetchType.LAZY)
    private List<Order> orders;

    
	public User() {
		super();
	}

	public User( String email, String firstname, String lastname, String password, String address,
			int pincode, String role) {
		super();
		this.email = email;
		this.firstname = firstname;
		this.lastname = lastname;
		this.password = password;
		this.address = address;
		this.pincode = pincode;
		this.role = role;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getFirstname() {
		return firstname;
	}

	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}

	public String getLastname() {
		return lastname;
	}

	public void setLastname(String lastname) {
		this.lastname = lastname;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public int getPincode() {
		return pincode;
	}

	public void setPincode(int pincode) {
		this.pincode = pincode;
	}

	@Override
	public String toString() {
		return "User [id=" + id + ", email=" + email + ", firstname=" + firstname + ", lastname=" + lastname
				+ ", password=" + password + ", address=" + address + ", pincode=" + pincode + "]";
	}
    
	
	
    
}

