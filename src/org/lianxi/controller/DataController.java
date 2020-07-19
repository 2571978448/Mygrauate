package org.lianxi.controller;

import java.util.List;
import java.util.Map;

import org.lianxi.entity.Data;
import org.lianxi.service.DataService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("data")
public class DataController {

	@Autowired
	private DataService dataService;
	
	@RequestMapping("allDatas")
	public String allAccesss(Map<String,Object> map) {
		List<Data> datas = dataService.allDatas();
		map.put("datas", datas);
		return "datas";
	}
	
}
