package com.service;

import java.util.List;

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

	 @Transactional
    public void addCaterers(TblAppUser caterers) {
		dao.addCaterers(caterers);

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
