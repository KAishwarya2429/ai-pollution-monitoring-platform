package com.aipollutionapp.dao;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import com.aipollutionapp.model.User;
import com.aipollutionapp.util.HibernateUtil;

public class UserDao {

    // Save new user
    public boolean saveUser(User user) {
        Transaction tx = null;

        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
            tx = session.beginTransaction();
            session.persist(user);
            tx.commit();
            return true;

        } catch (Exception e) {
            if (tx != null) tx.rollback();
            e.printStackTrace();
            return false;
        }
    }

    // Find user by email
    public User findByEmail(String email) {

        try (Session session = HibernateUtil.getSessionFactory().openSession()) {

            Query<User> query = session.createQuery(
                "FROM User WHERE email = :email", User.class);

            query.setParameter("email", email);

            return query.uniqueResult();
        }
    }

    // Login validation
    public User login(String email, String password) {

        try (Session session = HibernateUtil.getSessionFactory().openSession()) {

            Query<User> query = session.createQuery(
                "FROM User WHERE email = :email AND password = :password AND isActive = true",
                User.class);

            query.setParameter("email", email);
            query.setParameter("password", password);

            return query.uniqueResult();
        }
    }
}
