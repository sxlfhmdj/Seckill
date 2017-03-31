package org.seckill.dao.root.dao;

import org.seckill.dao.root.iface.TsucceedSeckill;
import org.seckill.dao.root.iface.TsucceedSeckillKey;

public interface TsucceedSeckillMapper {
    int deleteByPrimaryKey(TsucceedSeckillKey key);

    int insert(TsucceedSeckill record);

    int insertSelective(TsucceedSeckill record);

    TsucceedSeckill selectByPrimaryKey(TsucceedSeckillKey key);

    int updateByPrimaryKeySelective(TsucceedSeckill record);

    int updateByPrimaryKey(TsucceedSeckill record);
}