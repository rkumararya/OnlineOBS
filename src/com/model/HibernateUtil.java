package com.model;
 
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.AnnotationConfiguration;
 
public class HibernateUtil {
 
    private static final SessionFactory sessionFactory = buildSessionFactory();
 
    private static SessionFactory buildSessionFactory() {
        try {
            // Create the SessionFactory from hibernate.cfg.xml
            return new AnnotationConfiguration()
            		.configure()
                    .buildSessionFactory();
        } catch (Throwable ex) {
            System.err.println("Initial SessionFactory creation failed." + ex);
            throw new ExceptionInInitializerError(ex);
        }
    }
 
    public static SessionFactory getSessionFactory() {
        return sessionFactory;
    }
    
    public static List list() {
		SessionFactory sf = HibernateUtil.getSessionFactory();
		Session session = sf.openSession();
		List employees = session.createQuery("from Employee").list();
		session.close();
		return employees;
	}
	
    public static NewCustomer read(int id) {
		SessionFactory sf = HibernateUtil.getSessionFactory();
		Session session = sf.openSession();
		NewCustomer cust = (NewCustomer) session.get(NewCustomer.class, id);
		session.close();
		return cust;
	}
	
    public static NewCustomer save(NewCustomer cust) {
		SessionFactory sf = HibernateUtil.getSessionFactory();
		Session session = sf.openSession();
		session.beginTransaction();
		int id = (Integer) session.save(cust);
		cust.setId(id);
		session.getTransaction().commit();
		session.close();
		return cust;
	}

    public static NewCustomer update(NewCustomer cust) {
		SessionFactory sf = HibernateUtil.getSessionFactory();
		Session session = sf.openSession();
		session.beginTransaction();
		session.merge(cust);
		session.getTransaction().commit();
		session.close();
		return cust;

	}

    public static void delete(NewCustomer cust) {
		SessionFactory sf = HibernateUtil.getSessionFactory();
		Session session = sf.openSession();
		session.beginTransaction();
		session.delete(cust);
		session.getTransaction().commit();
		session.close();
	}
}

