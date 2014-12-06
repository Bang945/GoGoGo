package edu.fudan.nisl.jaq.dao;

import java.util.Date;
import java.util.List;

import org.hibernate.Query;

import edu.fudan.nisl.jaq.model.Deal;

public class DealDAO  extends GenericHibernateDAO<Deal,Long> {
	@SuppressWarnings("unchecked")
	public List<Deal> findDealByShop(String shopName){
		Query query = this.getSessionFactory().getCurrentSession().createQuery("from Deal as r where r.shop = ? and r.deadline > ? ");
		query.setString(0, shopName);
		Date now = new Date();
		query.setTimestamp(1, now);
		return query.list();
	}
}
