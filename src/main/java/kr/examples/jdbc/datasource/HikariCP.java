package kr.examples.jdbc.datasource;

import com.zaxxer.hikari.HikariConfig;
import com.zaxxer.hikari.HikariDataSource;
import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.SQLException;

public class HikariCP {

    static String configFile = "/datasource.properties";
    static HikariConfig config = new HikariConfig(configFile);


    static DataSource ds = new HikariDataSource(config);

    private HikariCP(){}

    public static Connection getConnection() throws SQLException {
        return ds.getConnection();
    }
}
