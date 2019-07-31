package com.turquoise.web.entities;

import java.io.Serializable;

import javax.persistence.*;


/**
 * @author LamNguyen
 *
 */
@Entity
public class User implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Id
    @GeneratedValue(strategy=GenerationType.SEQUENCE, generator="user_seq_gen")
	@SequenceGenerator(name="user_seq_gen", sequenceName="user_seq", allocationSize=1)
    @Column(name="id", nullable=false)
    private Long id;
    
	@Column(name = "name", length = 36, nullable=false)
    private String name;
	
    @Column(name = "first_name", length = 36)
    private String firstName;
    
    @Column(name = "mid_name", length = 100)
    private String midName;
    
    @Column(name = "last_name", length = 36)
    private String lastName;
    
    @Column(name = "email", length = 200, nullable = false)
    private String email;
    
    @Column(name = "emailVerified")
    private boolean emailVerified;
    
    @Column(name = "encryted_password", length = 128, nullable = false)
    private String password;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getMidName() {
		return midName;
	}

	public void setMidName(String midName) {
		this.midName = midName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public boolean isEmailVerified() {
		return emailVerified;
	}

	public void setEmailVerified(boolean emailVerified) {
		this.emailVerified = emailVerified;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
    
    

}