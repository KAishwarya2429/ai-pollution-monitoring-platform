package com.aipollutionapp.dao.impl;

import com.aipollutionapp.dao.ContactDAO;
import com.aipollutionapp.model.ContactMessage;
import com.aipollutionapp.util.HibernateUtil;
import org.hibernate.Session;
import org.hibernate.Transaction;

public class ContactDAOImpl implements ContactDAO {

    @Override
    public void save(ContactMessage message) {

        Transaction tx = null;

        try (Session session =
                     HibernateUtil.getSessionFactory()
                                   .openSession()) {

            tx = session.beginTransaction();
            session.persist(message);
            tx.commit();

        } catch (Exception e) {

            if (tx != null) tx.rollback();
            e.printStackTrace();
        }
    }
}
