/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.web.service;

import com.web.hibernate.util.HibernateUtil;
import com.web.model.Users;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author hung
 */
public class UserService {
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
}
