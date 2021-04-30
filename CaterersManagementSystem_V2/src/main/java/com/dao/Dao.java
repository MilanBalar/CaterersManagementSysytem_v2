package com.dao;

import java.util.List;

import com.bean.TblAppUser;

public interface Dao {


		 public void addCaterers(TblAppUser caterers);

		 public List<TblAppUser> listCaterers();

		 public TblAppUser getCaterers(int caterersId);

		 public void deleteCaterers(TblAppUser caterers);

}
