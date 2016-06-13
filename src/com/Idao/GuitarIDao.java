package com.Idao;

import java.util.List;

import model.Guitar;

public interface GuitarIDao {

	List findAll() throws Exception;

	boolean doCreate(Guitar guitar) throws Exception;

	boolean doDelete(String serialNumber) throws Exception;
	
}
