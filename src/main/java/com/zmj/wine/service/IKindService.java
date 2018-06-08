package com.zmj.wine.service;

import com.zmj.wine.entity.Kind;
import org.springframework.stereotype.Service;

import java.util.List;

public interface IKindService {
    Kind selectByPrimaryKey(Integer kindId);

    List<Kind> selectAll();

    Integer selectIdByName(String kindName);
}
