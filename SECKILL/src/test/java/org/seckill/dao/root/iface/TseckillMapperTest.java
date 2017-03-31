package org.seckill.dao.root.iface;

import ch.qos.logback.classic.Logger;
import ch.qos.logback.core.LogbackException;
import com.sun.javafx.Logging;
import junit.framework.TestCase;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.seckill.dao.root.dao.Tseckill;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.annotation.Resource;

/**
 * Created by sxlfh on 2017/3/31.
 */

/**
 * 1、在Junit启动的时候，加载Spring IOC容器
 * 2、告诉Junit , Spring配置文件在哪
 *
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"classpath*:spring-dao.xml"})

public class TseckillMapperTest extends TestCase {


    @Resource
    private TseckillMapper tseckillMapper;

    public void testDeleteByPrimaryKey() throws Exception {
    }

    public void testInsert() throws Exception {

    }

    public void testInsertSelective() throws Exception {

    }

    @Test
    public void testSelectByPrimaryKey() throws Exception {
        Tseckill tseckill = tseckillMapper.selectByPrimaryKey(1L);
        System.out.println(tseckill);

    }

    public void testUpdateByPrimaryKeySelective() throws Exception {

    }

    public void testUpdateByPrimaryKey() throws Exception {

    }
}