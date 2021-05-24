package com.service;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.bean.TblAppUser;
import com.dao.Dao;

@Service
@Component
public class CaterersServiceImp implements CaterersService {

	 @Autowired
	 private Dao dao;

	 @Autowired
	 private SessionFactory sessionFactory;

	 @Transactional
    public void addCaterers(TblAppUser caterers) {
		dao.addCaterers(caterers);

	}
	 @Transactional
	public List<TblAppUser> listCaterers() {
		List<TblAppUser> list=dao.listCaterers();
		return list;
	}

	public TblAppUser getCaterers(int caterersId) {
		// TODO Auto-generated method stub
		return null;
	}

	public void deleteCaterers(TblAppUser caterers) {
		// TODO Auto-generated method stub

	}


	public Boolean checkEmailAvailability(String emailId) {
		 System.out.println("email is"+emailId);

			Query query = sessionFactory.openSession().createQuery("select count(email) from TblAppUser login where login.email=:emailId");
			query.setString("emailId", emailId);
			Long count = (Long) query.uniqueResult();
			System.out.println("count of email"+count);

            if (count>0) {
				return true;
			} else {
				return false;
			}

      }

	public TblAppUser getUserByEmailAndPassword(String email, String password) {

		TblAppUser user=null;
		try
		{
			Query query = sessionFactory.openSession().createQuery("from TblAppUser login where login.email=:emailId and login.password=:password");
			query.setString("emailId", email);
			query.setString("password", password);
		    user = (TblAppUser) query.uniqueResult();
		    System.out.println("getUserByEmailAndPassword user detail is ="+user);

		}
		catch(Exception e)
        {
      	  System.out.println("----Exception is -------"+e);
      	  e.printStackTrace();
        }
		finally {
			sessionFactory.close();
		}

    return user;
	}




}
