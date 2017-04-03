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
@Table(name = "sanpham")
public class SanPham implements Serializable {
//    private static final long serialVersionUID = 1L;

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "sp_id", nullable = false)
    private int id;

    @NotEmpty
    @Column(name = "sp_ten", nullable = false)
    private String name;

    @Column(name = "lsp_id")
    private String lsp_id;
    
    @Column(name = "nsx_id")
    private String nsx_id;
    
    @Column(name = "sp_gia")
    private String gia;
    
    @Column(name = "sp_hinh")
    private String hinh;
    
    @Column(name = "sp_qrcode")
    private String qrcode;
    
    @Column(name = "sp_mota")
    private String mota;
    
    public SanPham() {
        super();
    }

	public SanPham(int id, String name, String lsp_id, String nsx_id, String gia, String hinh, String qrcode,
			String mota) {
		super();
		this.id = id;
		this.name = name;
		this.lsp_id = lsp_id;
		this.nsx_id = nsx_id;
		this.gia = gia;
		this.hinh = hinh;
		this.qrcode = qrcode;
		this.mota = mota;
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

	public String getLsp_id() {
		return lsp_id;
	}

	public void setLsp_id(String lsp_id) {
		this.lsp_id = lsp_id;
	}

	public String getNsx_id() {
		return nsx_id;
	}

	public void setNsx_id(String nsx_id) {
		this.nsx_id = nsx_id;
	}

	public String getGia() {
		return gia;
	}

	public void setGia(String gia) {
		this.gia = gia;
	}

	public String getHinh() {
		return hinh;
	}

	public void setHinh(String hinh) {
		this.hinh = hinh;
	}

	public String getQrcode() {
		return qrcode;
	}

	public void setQrcode(String qrcode) {
		this.qrcode = qrcode;
	}

	public String getMota() {
		return mota;
	}

	public void setMota(String mota) {
		this.mota = mota;
	}
    
}