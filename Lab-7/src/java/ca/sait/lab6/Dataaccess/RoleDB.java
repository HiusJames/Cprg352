package ca.sait.lab6.Dataaccess;

import ca.sait.lab6.Models.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;

public class RoleDB {
    public RoleDB() {
        
    }
    
    public List<Role> getAll() {
        EntityManagerFactory emFactory = DBUtil.getEmFactory();
        
        EntityManager em = emFactory.createEntityManager();
        
        return em.createNamedQuery("Role.findAll", Role.class).getResultList();
    }
}