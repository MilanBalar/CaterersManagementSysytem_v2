package com.service;

import java.util.List;

import com.bean.TblAppUser;


public interface CaterersService {

	 public void addCaterers(TblAppUser caterers);

	 public List<TblAppUser> listCaterers();

	 public TblAppUser getCaterers(int caterersId);

	 public void deleteCaterers(TblAppUser caterers);

	 public Boolean checkEmailAvailability(String email);

	 public TblAppUser getUserByEmailAndPassword(String email,String password);

	 public long noOfCustomer();

	 public long noOfCateres();

}
