package edu.fudan.nisl.jaq.dao;

import java.io.Serializable;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.List;

import javax.annotation.Resource;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.SessionFactory;
import org.springframework.orm.hibernate4.HibernateTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class GenericHibernateDAO<T, PK extends Serializable> implements
		GenericDAO<T, PK> {

	@Resource
	protected SessionFactory sessionFactory;
	@Resource
	private HibernateTemplate hibernateTemplate;

	private static Log log = LogFactory.getLog(GenericHibernateDAO.class);
	private Class<T> entityClass;

	/**
	 * 构造方法，根据实例类自动获取实体类类型
	 */
	@SuppressWarnings("all")
	public GenericHibernateDAO() {
		this.entityClass = null;
		Class<? extends GenericHibernateDAO> c = getClass();
		Type t = c.getGenericSuperclass();
		if (t instanceof ParameterizedType) {
			Type[] p = ((ParameterizedType) t).getActualTypeArguments();
			this.entityClass = (Class<T>) p[0];
		}
		if (entityClass!=null)
			log.debug("entity class = " + entityClass.toString());
	}

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	public HibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}

	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}

	public Class<T> getEntityClass() {
		return entityClass;
	}

	public void setEntityClass(Class<T> entityClass) {
		this.entityClass = entityClass;
	}

	@Override
	public PK create(T newInstance) {
		this.getHibernateTemplate().save(newInstance);
		return null;
	}

	@Override
	public T findById(PK id) {
		return this.getHibernateTemplate().get(entityClass, id);
	}

	@Override
	public void update(T transientObject) {
		this.getHibernateTemplate().update(transientObject);

	}

	@Override
	public void delete(T persistentObject) {
		this.getHibernateTemplate().delete(persistentObject);

	}

	@SuppressWarnings("unchecked")
	@Override
	public List<T> findAll() {
		return this.getSessionFactory().getCurrentSession()
				.createCriteria(getEntityClass()).list();
	}

}
