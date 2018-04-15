package com.springmvc.dao;

import com.springmvc.pojo.Info;
import org.springframework.stereotype.Repository;

@Repository
public interface InfoMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Info record);

    int insertSelective(Info record);

    Info selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Info record);

    int updateByPrimaryKey(Info record);
}