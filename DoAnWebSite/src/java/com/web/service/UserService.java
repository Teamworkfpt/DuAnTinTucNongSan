/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.web.service;

import com.web.hibernate.util.HibernateUtil;
import com.web.model.Users;
import java.util.ArrayList;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author hung
 */
public class UserService {
     public boolean DeleteUser(int IdUser){
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction tx = null;
        try {
            tx = session.getTransaction();
            tx.begin();
            Users user = new Users();
            user.setIdUser(IdUser);
            session.delete(user);
            tx.commit();
            return true;
        } catch (Exception e) {
            if(tx != null){
                tx.rollback();
            }
            System.out.println(e.toString());
        }finally{
            session.close();
        }
        return false;
    }
    
    public boolean InsertUser(Users user ){
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction tx = null;
        
        
       try {
            tx = session.getTransaction();
            tx.begin();
            session.saveOrUpdate(user);
            tx.commit();
            return true;
        } catch (Exception e) {
            if(tx != null){
                tx.rollback();
            }
            System.out.println(e.toString());
        }finally{
            session.close();
        }
        return false;
    }
    
    
    public Users GetUsersByEmailOrUsersName(String username){
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction tx = null;
        
        
        try {
            tx = session.getTransaction();
            tx.begin();
            
            String strQuery = "from Users where email = '" + username +"' or UserName = '"+ username + "' ";            
            Query query = session.createQuery(strQuery);
            
            Users user = (Users) query.uniqueResult();
            tx.commit();
            return user;
                    
        } catch (Exception e) {
              if(tx != null){
                tx.rollback();
            }
            System.out.println(e.toString());
        }finally{
            session.close();
        }
            return null;
        }
    public boolean CheckLogin(String username, String Password){
        Users user  = GetUsersByEmailOrUsersName(username);
        if(user == null){
            return false;
        }else{
            if(user.getPwd().equals(Password)){
                return true;
                
            }else{
                  return false; 
            }
        }
            
    }

     public Users GetUsersByIDUsers(String userID){
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction tx = null;
        
        
        try {
            tx = session.getTransaction();
            tx.begin();
            
            String strQuery = "from Users where idUser = " + userID + "" ;            
            Query query = session.createQuery(strQuery);
            Users user = (Users) query.uniqueResult();
            tx.commit();
            return user;
                    
        } catch (Exception e) {
              if(tx != null){
                tx.rollback();
            }
            System.out.println(e.toString());
        }finally{
            session.close();
        }
            return null;
        }
     public int usercount = 0;
    public ArrayList<Users> getAllUsers(int pageSize, int pageNumber){
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction tx = null;
        ArrayList listUsers = new ArrayList<Users>();
        
        try {
            tx = session.getTransaction();
            tx.begin();
            
            Query query = session.createQuery("from Users");
            usercount = query.list().size();
            query = query.setFirstResult(pageSize * (pageNumber - 1));
            query.setMaxResults(pageSize);            
            listUsers = (ArrayList) query.list();
            
            tx.commit();
            
        } catch (Exception e) {
            if(tx!=null){
                tx.rollback();
            }
            
        }finally{
            session.close();
        }
        
        return listUsers;
    }
    public ArrayList<Users> SearchUsers(int pageSize, int pageNumber, String key){
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction tx = null;
        ArrayList listUsers = new ArrayList<Users>();
        
        try {
            tx = session.getTransaction();
            tx.begin();
            
            Query query = session.createQuery("from Users where UserName like '%"+key+"%'");
                    
            usercount = query.list().size();
            query = query.setFirstResult(pageSize * (pageNumber - 1));
            query.setMaxResults(pageSize);            
            listUsers = (ArrayList) query.list();
            
            tx.commit();
            
        } catch (Exception e) {
            if(tx!=null){
                tx.rollback();
            }
            
        }finally{
            session.close();
        }
        
        return listUsers;
    }
}

    
        

