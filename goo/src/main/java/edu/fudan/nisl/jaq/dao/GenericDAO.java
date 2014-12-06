package edu.fudan.nisl.jaq.dao;

import java.util.List;

import org.springframework.stereotype.Repository;
/**
 * Generic Data Access Object
 * 
 * @author Huang Zhenkun
 * @version 1.8
 * 
 * @param <T> the type of entity class
 * @param <PK> the primary key represented by a field in the entity class
 */
@Repository
public interface GenericDAO<T, PK > {

	
	/**
	 * Persist the newInstance object into database
	 * @param newInstance
	 * @return
	 */
	public PK create(T newInstance);

	/**
	 * Retrieve an object that was previously persisted to the database using
	 * the indicated id as primary key
	 */
	public T findById(PK id);
	
	
	/** Save changes made to a persistent object. */
	public void update(T transientObject);

	/** Remove an object from persistent storage in the database */
	public void delete(T persistentObject);

	

	public List<T> findAll();

	
}
