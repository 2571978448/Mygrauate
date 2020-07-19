package org.lianxi.mapper;

import java.util.List;

import org.lianxi.entity.Data;

public interface DataMapper {
	public void addData(Data data);
	public List<Data> allDatas();
}
