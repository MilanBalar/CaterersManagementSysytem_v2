package com.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bean.TblAppUser;

@Repository
public class DaoImp implements Dao
{
	 @Autowired
    private SessionFactory sessionFactory;

	public void addCaterers(TblAppUser caterers) {
		sessionFactory.getCurrentSession().saveOrUpdate(caterers);
	}

	public List<TblAppUser> listCaterers() {
		// TODO Auto-generated method stub
		return null;
	}

	public TblAppUser getCaterers(int caterersId) {
		// TODO Auto-generated method stub
		return null;
	}

	public void deleteCaterers(TblAppUser caterers) {
		// TODO Auto-generated method stub

	}

}
