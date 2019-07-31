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

}