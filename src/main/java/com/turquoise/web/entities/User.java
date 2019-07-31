package com.turquoise.web.entities;

import java.io.Serializable;

import javax.persistence.*;


/**
 * @author LamNguyen
 *
 */
@Entity
@Table(name="jp_users")
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

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}   
	
}