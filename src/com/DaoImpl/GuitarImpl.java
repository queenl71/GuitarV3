package com.DaoImpl;

import java.util.List;

import com.Idao.GuitarIDao;

import model.Guitar;
public class GuitarImpl   implements GuitarIDao{

	@Override
	public List findAll() throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean doCreate(Guitar guitar) throws Exception {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean doDelete(String serialNumber) {
		// TODO Auto-generated method stub
		return false;
	}
	
}
