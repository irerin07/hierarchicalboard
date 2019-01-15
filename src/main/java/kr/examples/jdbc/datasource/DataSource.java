package kr.examples.jdbc.datasource;

import com.zaxxer.hikari.HikariConfig;
import com.zaxxer.hikari.HikariDataSource;

import java.sql.Connection;
import java.sql.SQLException;

public class DataSource {

    String configFile = "/datasource.properties";
    HikariConfig config = new HikariConfig(configFile);



}
