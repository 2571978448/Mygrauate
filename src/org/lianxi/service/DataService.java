package org.lianxi.service;

import java.util.List;

import org.lianxi.entity.Data;

public interface DataService {
	public void addData(Data data);
	public List<Data> allDatas();
}
