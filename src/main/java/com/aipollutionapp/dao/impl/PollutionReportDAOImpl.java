package com.aipollutionapp.dao.impl;

import com.aipollutionapp.dao.PollutionReportDAO;
import com.aipollutionapp.model.PollutionReport;
import com.aipollutionapp.util.HibernateUtil;

import org.hibernate.Session;
import org.hibernate.Transaction;

public class PollutionReportDAOImpl implements PollutionReportDAO {

    @Override
    public void save(PollutionReport report) {
        Transaction tx = null;
        Session session = null;
        try {
            session = HibernateUtil.getSessionFactory().openSession();
            tx = session.beginTransaction();

            session.persist(report);

            tx.commit();
        } catch (Exception e) {
            e.printStackTrace();
            if (tx != null && tx.isActive()) {
                tx.rollback(); // rollback only if active
            }
        } finally {
            if (session != null && session.isOpen()) {
                session.close(); // close only if open
            }
        }
    }
}
