package com.web.model;
// Generated Nov 22, 2016 8:47:33 PM by Hibernate Tools 4.3.1



/**
 * Sanpham generated by hbm2java
 */
public class Sanpham  implements java.io.Serializable {


     private int idSanPham;
     private String tenSanPham;
     private String moTa;

    public Sanpham() {
    }

	
    public Sanpham(int idSanPham, String tenSanPham) {
        this.idSanPham = idSanPham;
        this.tenSanPham = tenSanPham;
    }
    public Sanpham(int idSanPham, String tenSanPham, String moTa) {
       this.idSanPham = idSanPham;
       this.tenSanPham = tenSanPham;
       this.moTa = moTa;
    }
   
    public int getIdSanPham() {
        return this.idSanPham;
    }
    
    public void setIdSanPham(int idSanPham) {
        this.idSanPham = idSanPham;
    }
    public String getTenSanPham() {
        return this.tenSanPham;
    }
    
    public void setTenSanPham(String tenSanPham) {
        this.tenSanPham = tenSanPham;
    }
    public String getMoTa() {
        return this.moTa;
    }
    
    public void setMoTa(String moTa) {
        this.moTa = moTa;
    }




}


