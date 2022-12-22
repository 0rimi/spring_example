package com.example.lesson02.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.example.lesson02.model.UsedGoods;

@Repository	//저장소에 가깝다
public interface UsedGoodsDAO {	//Data Access Object
	
	// input:X (service가 아무것도 주지않음)
	// output:List<UsedGoods>
	public List<UsedGoods> selectUsedGoodsList();
	
}
