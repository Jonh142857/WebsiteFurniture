package com.huy.domain;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;
@Entity
@Table(name = "nhasanxuat")
public class NhaSanXuat implements Serializable {
//    private static final long serialVersionUID = 1L;

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "nsx_id", nullable = false)
    private int id;

    @NotEmpty
    @Column(name = "nsx_ten", nullable = false)
    private String name;

    @Column(name = "nsx_diachi")
    private String diachi;
    
    @Email
    @Column(name = "nsx_email")
    private String email;
    
    @Column(name = "nsx_sdt")
    private String sdt;

    public NhaSanXuat() {
        super();
    }

	public NhaSanXuat(int id, String name, String diachi, String email, String sdt) {
		super();
		this.id = id;
		this.name = name;
		this.diachi = diachi;
		this.email = email;
		this.sdt = sdt;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDiachi() {
		return diachi;
	}

	public void setDiachi(String diachi) {
		this.diachi = diachi;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getSdt() {
		return sdt;
	}

	public void setSdt(String sdt) {
		this.sdt = sdt;
	}


}