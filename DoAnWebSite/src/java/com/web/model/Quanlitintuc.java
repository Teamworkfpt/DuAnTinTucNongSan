package com.web.model;
// Generated Dec 12, 2016 3:55:52 PM by Hibernate Tools 4.3.1


import java.util.Date;

/**
 * Quanlitintuc generated by hbm2java
 */
public class Quanlitintuc  implements java.io.Serializable {


     private int idtinTuc;
     private int maTin;
     private String tieuDe;
     private String baiDang;
     private String mota;
     private Date ngayDang;

    public Quanlitintuc() {
    }

    public Quanlitintuc(int idtinTuc, int maTin, String tieuDe, String baiDang, String mota, Date ngayDang) {
       this.idtinTuc = idtinTuc;
       this.maTin = maTin;
       this.tieuDe = tieuDe;
       this.baiDang = baiDang;
       this.mota = mota;
       this.ngayDang = ngayDang;
    }
   
    public int getIdtinTuc() {
        return this.idtinTuc;
    }
    
    public void setIdtinTuc(int idtinTuc) {
        this.idtinTuc = idtinTuc;
    }
    public int getMaTin() {
        return this.maTin;
    }
    
    public void setMaTin(int maTin) {
        this.maTin = maTin;
    }
    public String getTieuDe() {
        return this.tieuDe;
    }
    
    public void setTieuDe(String tieuDe) {
        this.tieuDe = tieuDe;
    }
    public String getBaiDang() {
        return this.baiDang;
    }
    
    public void setBaiDang(String baiDang) {
        this.baiDang = baiDang;
    }
    public String getMota() {
        return this.mota;
    }
    
    public void setMota(String mota) {
        this.mota = mota;
    }
    public Date getNgayDang() {
        return this.ngayDang;
    }
    
    public void setNgayDang(Date ngayDang) {
        this.ngayDang = ngayDang;
    }




}


