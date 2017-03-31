package org.seckill.dao.root.iface;

import java.util.Date;

public class TsucceedSeckill extends TsucceedSeckillKey {
    private Date seckillTime;

    private Date createTime;

    public Date getSeckillTime() {
        return seckillTime;
    }

    public void setSeckillTime(Date seckillTime) {
        this.seckillTime = seckillTime;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    @Override
    public String toString() {
        return "TsucceedSeckill{" +
                "seckillTime=" + seckillTime +
                ", createTime=" + createTime +
                '}';
    }
}