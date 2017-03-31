package org.seckill.dao.root.iface;

import org.seckill.dao.root.dao.TsucceedSeckill;
import org.seckill.dao.root.dao.TsucceedSeckillKey;

public interface TsucceedSeckillMapper {
    int deleteByPrimaryKey(TsucceedSeckillKey key);

    int insert(TsucceedSeckill record);

    int insertSelective(TsucceedSeckill record);

    TsucceedSeckill selectByPrimaryKey(TsucceedSeckillKey key);

    int updateByPrimaryKeySelective(TsucceedSeckill record);

    int updateByPrimaryKey(TsucceedSeckill record);
}