package com.aipollutionapp.dao;

import com.aipollutionapp.model.ContactMessage;

public interface ContactDAO {

    void save(ContactMessage message);
}
