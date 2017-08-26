package com.blogs.config;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.context.annotation.Configuration;

/**
 * @author: GLGGAG
 * @Date: 2017/08/22/上午 10:17
 * @Description:
 */

@Configuration
@MapperScan("blogs.mapper*")
public class MybatisPaginationConfig {


}
