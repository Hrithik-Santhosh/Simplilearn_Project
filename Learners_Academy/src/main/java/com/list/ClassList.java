package com.list;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.database.Classes;
import com.database.Login;
import com.database.Subject;
import com.database.Teacher;
import com.util.HibernateUtil;


public class ClassList {
//
	
//	add student
	public static void saveData(Classes cls) {
		 SessionFactory factory = HibernateUtil.getSessionFactory();
		 Session session = factory.openSession();
		Transaction tx = session.beginTransaction();
		session.clear();
		session.update(cls);
		tx.commit();
	}
	
	// add user
	public static void saveUser(Login cls) {
	  SessionFactory factory = HibernateUtil.getSessionFactory();
	  Session session = factory.openSession();
		Transaction tx = session.beginTransaction();
		session.clear();
		session.save(cls);
		tx.commit();
	}

	//	list of all classes
	public static List<Classes> getClassList(String qry){
		SessionFactory factory = HibernateUtil.getSessionFactory();
		Session session = factory.openSession();
		List<Classes> list  = session.createQuery(qry).list();
		return list;
	}
	
//	list of all teachers
	public static List<Teacher> getTeacherList(String qry){
		 SessionFactory factory = HibernateUtil.getSessionFactory();
		 Session session = factory.openSession();
		List<Teacher> list  = session.createQuery(qry).list();
		return list;
	}
	
//	list of all subjects
	public static List<Subject> getSubjectList(String qry){
		 SessionFactory factory = HibernateUtil.getSessionFactory();
		 Session session = factory.openSession();
		List<Subject> list  = session.createQuery(qry).list();
		return list;
	}
	
//	list of all subjects
	public static List<Login> getUserList(String qry){
		 SessionFactory factory = HibernateUtil.getSessionFactory();
		 Session session = factory.openSession();
		List<Login> list  = session.createQuery(qry).list();
		return list;
	}

}
