package org.lianxi.service.impl;

import java.util.List;

import org.lianxi.entity.Data;
import org.lianxi.mapper.DataMapper;
import org.lianxi.service.DataService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class DataServiceImpl implements DataService{

	@Autowired
	private DataMapper dataMapper;
	
	public void setDataMapper(DataMapper dataMapper) {
		this.dataMapper = dataMapper;
	}

	@Override
	public void addData(Data data) {
		dataMapper.addData(data);
	}

	@Override
	public List<Data> allDatas() {
		return dataMapper.allDatas();
	}
	
}
