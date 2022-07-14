package com.util;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import com.database.Subject;
import com.database.Teacher;
import com.database.Classes;
import com.database.class_subject;
import com.database.Login;
import com.database.class_teacher;

public class HibernateUtil {
private static SessionFactory sessionFactory;
	
/*
 * public static SessionFactory getSessionFactory() { if (sessionFactory !=
 * null) return sessionFactory;
 * 
 * Configuration configuration = new Configuration();
 * configuration.configure("hibernate.cfg.xml");
 * 
 * sessionFactory = configuration.buildSessionFactory();
 * 
 * return sessionFactory; }
 */
	
	public static SessionFactory getSessionFactory() {
		if (sessionFactory != null) {
			return sessionFactory;
		}
//		Step 1: Create Config obj and provide DB info.
		Configuration configuration = new Configuration();
		configuration.configure("hibernate.cfg.xml");

		// provide mapping
		configuration.addAnnotatedClass(Classes.class);
		configuration.addAnnotatedClass(Subject.class);
		configuration.addAnnotatedClass(Teacher.class);
		configuration.addAnnotatedClass(Login.class);
		configuration.addAnnotatedClass(class_subject.class);
		configuration.addAnnotatedClass(class_teacher.class);

		sessionFactory = configuration.buildSessionFactory();
		return sessionFactory;

	}

}
