/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.web.service;

import com.web.hibernate.util.HibernateUtil;
import com.web.model.Quanlitintuc;
import com.web.model.Users;
import java.util.ArrayList;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author Admin
 */
public class QuanLiTinTucService {
    public int Newscount = 0;
     public ArrayList<Quanlitintuc> getAllNews(int pageSize, int pageNumber){
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction tx = null;
        ArrayList listNews = new ArrayList<Quanlitintuc>();
        
        try {
            tx = session.getTransaction();
            tx.begin();
            
            Query query = session.createQuery("from Quanlitintuc");
            Newscount = query.list().size();
            query = query.setFirstResult(pageSize * (pageNumber - 1));
            query.setMaxResults(pageSize);            
            listNews = (ArrayList) query.list();
            
            tx.commit();
            
        } catch (Exception e) {
            if(tx!=null){
                tx.rollback();
            }
            
        }finally{
            session.close();
        }
        
        return listNews;
    }
     public ArrayList<Quanlitintuc> SearchNews(int pageSize, int pageNumber, String key){
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction tx = null;
        ArrayList listNews = new ArrayList<Quanlitintuc>();
        
        try {
            tx = session.getTransaction();
            tx.begin();
            
            Query query = session.createQuery("from Quanlitintuc where TieuDe like '%"+key+"%'");
                    
            Newscount = query.list().size();
            query = query.setFirstResult(pageSize * (pageNumber - 1));
            query.setMaxResults(pageSize);            
            listNews = (ArrayList) query.list();
            
            tx.commit();
            
        } catch (Exception e) {
            if(tx!=null){
                tx.rollback();
            }
            
        }finally{
            session.close();
        }
        
        return listNews;
    }
     public ArrayList<Quanlitintuc> SearchNew(int pageSize, int pageNumber, String key){
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction tx = null;
        ArrayList listNew = new ArrayList<Quanlitintuc>();
        
        try {
            tx = session.getTransaction();
            tx.begin();
            
            Query query = session.createQuery("from Quanlitintuc where TieuDe like '%"+key+"%'");
                    
            Newscount = query.list().size();
            query = query.setFirstResult(pageSize * (pageNumber - 1));
            query.setMaxResults(pageSize);            
            listNew = (ArrayList) query.list();
            
            tx.commit();
            
        } catch (Exception e) {
            if(tx!=null){
                tx.rollback();
            }
            
        }finally{
            session.close();
        }
        
        return listNew;
    }
}