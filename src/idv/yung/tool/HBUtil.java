package idv.yung.tool;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import idv.yung.profolio.gold.Gold;

public class HBUtil {
	private static SessionFactory sessionFactory;
	
	static {
		try {
			sessionFactory = new Configuration()
					.configure("hibernate.cfg.xml")
					.addAnnotatedClass(Gold.class)
					.buildSessionFactory();
		} catch(Throwable ex) {
			throw new ExceptionInInitializerError(ex);
		}
	}
	
	public static SessionFactory getSessionFactory() {
		return sessionFactory;
	}
	
	public static void close() {
		sessionFactory.close();
	}

}
