package com.zmj.wine.service.impl;

import com.alibaba.fastjson.JSON;
import com.google.gson.Gson;
import com.zmj.wine.dao.ProofMapper;
import com.zmj.wine.entity.Proof;
import com.zmj.wine.service.IProofService;
import com.zmj.wine.utils.RedisUtil;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

@Service
@Transactional
public class ProofServiceImpl implements IProofService{
    @Resource
    private ProofMapper proofDAO;

    @Resource
    private RedisUtil redisUtil;

    @Override
    public Proof selectByPrimaryKey(Integer proofId) {
        Gson gson = new Gson();
        String key="proof"+proofId.toString();
        Proof proof;
        try {
            proof = JSON.parseObject(redisUtil.get(key).toString(), Proof.class);
        }catch (NullPointerException e1){
            synchronized (key){
                try {
                    proof = JSON.parseObject(redisUtil.get(key).toString(), Proof.class);
                }catch (NullPointerException e2){
                    proof = proofDAO.selectByPrimaryKey(proofId);
                    redisUtil.set(key,gson.toJson(proof));
                }
            }
        }
        return proof;
    }

    @Override
    public List<Proof> selectAllByKindId(int kindId) {
        List<Proof> proofList = proofDAO.selectAllByKindId(kindId);
        return proofList;
    }
}
