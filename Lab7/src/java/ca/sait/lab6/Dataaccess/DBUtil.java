package ca.sait.lab6.Dataaccess;

import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

public class DBUtil {

    private static final EntityManagerFactory emf
            = Persistence.createEntityManagerFactory("UsersPU");

    public static EntityManagerFactory getEmFactory() {
        return emf;
    }
}
