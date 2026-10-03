package com.example.Util;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class HibernateUtil {

    private static final SessionFactory sessionFactory;

    static {
        try {

            Configuration configuration =
                    new Configuration().configure("hibernate.cfg.xml");

            String host = System.getenv("MYSQLHOST");
            String port = System.getenv("MYSQLPORT");
            String database = System.getenv("MYSQLDATABASE");
            String username = System.getenv("MYSQLUSER");
            String password = System.getenv("MYSQLPASSWORD");

            if (host != null && port != null && database != null
                    && username != null && password != null) {

                configuration.setProperty(
                        "hibernate.connection.url",
                        "jdbc:mysql://" + host + ":" + port + "/" + database
                );

                configuration.setProperty(
                        "hibernate.connection.username",
                        username
                );

                configuration.setProperty(
                        "hibernate.connection.password",
                        password
                );
            }

            sessionFactory = configuration.buildSessionFactory();

        } catch (Throwable ex) {

            System.out.println(
                    "Session Factory creation failed: " + ex.getMessage()
            );

            throw new ExceptionInInitializerError(ex);
        }
    }

    public static SessionFactory getSessionFactory() {
        return sessionFactory;
    }
}