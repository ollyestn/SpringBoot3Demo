package com.xyai.shenniuban;

import com.xyai.shenniuban.entity.TestData;
import com.xyai.shenniuban.mapper.TestDataMapper;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.Optional;

@SpringBootTest
class ShenniubanApplicationTests {

    @Autowired
    private TestDataMapper testDataMapper;
    @Test
    void contextLoads() {
    }

    @Test
    void test_table_data(){
        Optional<TestData> data = testDataMapper.getById(1L);
        System.out.println(data);

        TestData byId = testDataMapper.selectById(1);
        System.out.println(byId);
    }
}
