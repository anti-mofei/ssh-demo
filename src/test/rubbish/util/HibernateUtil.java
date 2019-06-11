package rubbish.util;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;


public class HibernateUtil {
    private static SessionFactory sf;

    static{
        Configuration cfg = new Configuration();
        cfg.configure("rubbish/hibernate.cfg.xml");
        sf = cfg.buildSessionFactory();
    }

    public static Session getSession(){
        return sf.openSession();
    }

}
