package com.springmvc.service;

import com.springmvc.dao.InfoMapper;
import com.springmvc.pojo.Info;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * @author: yan
 * @Date: 2018/4/15/0015 7:21
 * @Description:
 */

public interface UserService {

    public Info getInfo(int id);

    public int insertInfo(Info info);
}
