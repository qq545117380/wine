package com.zmj.wine.service.impl;

import com.zmj.wine.dao.ProofMapper;
import com.zmj.wine.entity.Proof;
import com.zmj.wine.service.IProofService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

@Service
@Transactional
public class ProofServiceImpl implements IProofService{
    @Resource
    private ProofMapper proofDAO;
    @Override
    public Proof selectByPrimaryKey(Integer proofId) {
        Proof proof = proofDAO.selectByPrimaryKey(proofId);
        return proof;
    }

    @Override
    public List<Proof> selectAllByKindId(int kindId) {
        List<Proof> proofList = proofDAO.selectAllByKindId(kindId);
        return proofList;
    }
}
