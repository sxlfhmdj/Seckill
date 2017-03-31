package org.seckill.dao.root.iface;

import org.seckill.dao.root.dao.Tseckill;

public interface TseckillMapper {
    int deleteByPrimaryKey(Long id);

    int insert(Tseckill record);

    int insertSelective(Tseckill record);

    Tseckill selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(Tseckill record);

    int updateByPrimaryKey(Tseckill record);
}