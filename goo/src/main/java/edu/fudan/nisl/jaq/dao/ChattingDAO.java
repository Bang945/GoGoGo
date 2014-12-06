package edu.fudan.nisl.jaq.dao;

import java.util.List;

import org.hibernate.Query;

import edu.fudan.nisl.jaq.model.Chatting;

public class ChattingDAO  extends GenericHibernateDAO<Chatting,Long> {
	@SuppressWarnings("unchecked")
	public List<Chatting> findChattingByDeal(int dealId){
		Query query = this.getSessionFactory().getCurrentSession().createQuery("from Chatting as r where r.deal = ? ");
		query.setInteger(0, dealId);
		return query.list();
	}
}
