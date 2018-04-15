package com.springmvc.service.impl;

import com.springmvc.dao.InfoMapper;
import com.springmvc.pojo.Info;
import com.springmvc.service.UserService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * @author: yan
 * @Date: 2018/4/15/0015 8:12
 * @Description:
 */
@Service("userService")
public class UserServiceImpl implements UserService {
    @Resource
    private InfoMapper infoMapper;


    @Override
    public Info getInfo(int id) {
        Info info = this.infoMapper.selectByPrimaryKey(id);
        if (info != null) {
            return info;
        }
        return null;
    }

    @Override
    public int insertInfo(Info info){
        return this.infoMapper.insert(info);
    }
}
