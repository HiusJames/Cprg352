package ca.sait.lab6.Dataaccess;

import ca.sait.lab6.Models.*;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;

public class UserDB {

    public List<User> getAll() throws Exception {
        EntityManagerFactory emFactory = DBUtil.getEmFactory();

        EntityManager em = emFactory.createEntityManager();

        return em.createNamedQuery("User.findAll", User.class).getResultList();
    }
    
    public User get(String email) throws Exception {
        EntityManagerFactory emFactory = DBUtil.getEmFactory();
        
        EntityManager em = emFactory.createEntityManager();   
       
        
        try {
            User user = em.find(User.class, email);
            
            return user;
        } finally { 
            em.close();
        }
    }

    public void insert(String email, boolean activity, String first_name, String last_name, String password, Role role) throws Exception {
        EntityManagerFactory emFactory = DBUtil.getEmFactory();
        
        EntityManager em = emFactory.createEntityManager();
        
        User user = new User(email, activity, first_name, last_name, password, role);
        
        
       EntityTransaction trans = em.getTransaction();
        try {
            trans.begin();
            em.persist(user);
            trans.commit();
            
            
        } catch (Exception ex) {
            trans.rollback();
            
           
        } finally {
            em.close();
        }

    }

    public void update(User user) throws Exception {
        EntityManagerFactory emFactory = DBUtil.getEmFactory();
        EntityManager em = emFactory.createEntityManager();
        User ref = em.find(User.class, user.getEmail());

        ref.setActive(true);
        ref.setFirstName(user.getFirstName());
        ref.setLastName(user.getLastName());
        ref.setRole(user.getRole());

        EntityTransaction trans = em.getTransaction();

        try {
            trans.begin();
            em.persist(ref);
            trans.commit();

        } catch (Exception ex) {
            trans.rollback();
        } finally {
            em.close();
        }
    }

    public void remove(User user) throws Exception {
        EntityManagerFactory emFactory = DBUtil.getEmFactory();

        EntityManager em = emFactory.createEntityManager();

        EntityTransaction trans = em.getTransaction();

        User ref = em.find(User.class, user.getEmail());

        try {
            trans.begin();
            em.remove(ref);
            trans.commit();

        } catch (Exception ex) {
            trans.rollback();
        } finally {
            em.close();
        }

    }
    
    public void delete(User user) throws Exception {
         EntityManagerFactory emFactory = DBUtil.getEmFactory();
        EntityManager em = emFactory.createEntityManager();
        User ref = em.find(User.class, user.getEmail());

        ref.setActive(false);
        ref.setFirstName(user.getFirstName());
        ref.setLastName(user.getLastName());
        ref.setRole(user.getRole());

        EntityTransaction trans = em.getTransaction();

        try {
            trans.begin();
            em.persist(ref);
            trans.commit();

        } catch (Exception ex) {
            trans.rollback();
        } finally {
            em.close();
        }

    }
}
