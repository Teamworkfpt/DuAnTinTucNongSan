/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.web.service;

import com.web.hibernate.util.HibernateUtil;
import com.web.model.Sanpham;
import java.util.ArrayList;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author Admin
 */
public class SanPhamService {
        public int Productcount = 0;
     public ArrayList<Sanpham> GetProduct(){
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction tx = null;
        ArrayList<Sanpham> listNews = new ArrayList<>();
        try{
            tx = session.getTransaction();
            tx.begin();
            Query query = session.createQuery("from Sanpham");
            listNews = (ArrayList) query.list();
        }catch(Exception e){
            if(tx!=null){
                tx.rollback();
            }
            System.out.println("Loi" + e.toString());
            
        }finally{
            session.close();
        }
        return  listNews;
    }
       public Sanpham GetNewsByID(String Matin){
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction tx = null;
        try{
            tx = session.getTransaction();
            tx.begin();
            String stringQuery = "from Sanpham where idSanPham ='" + Matin + "'";
            Query query = session.createQuery(stringQuery);
            Sanpham Sanpham =  (Sanpham) query.uniqueResult();
            tx.commit();
            return Sanpham;
        }catch (Exception e){
            if(tx != null){
                tx.rollback();
            }
            System.out.println(e.toString());
        }finally{
            session.close();
        }
        return null;

    }
       public ArrayList<Sanpham> getAllSanpham(int pageSize, int pageNumber){
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction tx = null;
        ArrayList listProduct = new ArrayList<Sanpham>();
        
        try {
            tx = session.getTransaction();
            tx.begin();
            
            Query query = session.createQuery("from Sanpham");
            Productcount = query.list().size();
            query = query.setFirstResult(pageSize * (pageNumber - 1));
            query.setMaxResults(pageSize);            
            listProduct = (ArrayList) query.list();
            
            tx.commit();
            
        } catch (Exception e) {
            if(tx!=null){
                tx.rollback();
            }
            
        }finally{
            session.close();
        }
        
        return listProduct;
    }
    public ArrayList<Sanpham> SearchProduct(int pageSize, int pageNumber, String key){
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction tx = null;
        ArrayList listProduct = new ArrayList<Sanpham>();
        
        try {
            tx = session.getTransaction();
            tx.begin();
            
            Query query = session.createQuery("from Users where UserName like '%"+key+"%'");
                    
            Productcount = query.list().size();
            query = query.setFirstResult(pageSize * (pageNumber - 1));
            query.setMaxResults(pageSize);            
            listProduct = (ArrayList) query.list();
            
            tx.commit();
            
        } catch (Exception e) {
            if(tx!=null){
                tx.rollback();
            }
            
        }finally{
            session.close();
        }
        
        return listProduct;
    }
}
