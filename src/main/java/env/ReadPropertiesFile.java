package env;

import java.io.FileInputStream;
import java.io.IOException;
import java.util.Properties;

public class ReadPropertiesFile {
	private String user;
	private String password;
	private String mysqlUrl;
	public ReadPropertiesFile() throws IOException{
		Properties properties = new Properties();
		FileInputStream inputStream = new FileInputStream("c:/upload/db.properties");
		properties.load(inputStream);
        this.user = properties.getProperty("mysql.user");
        this.password = properties.getProperty("mysql.password");
        this.mysqlUrl=properties.getProperty("mysql.url");
        inputStream.close();
	}
	public String getUser() {
		return user;
	}
	public String getPassword() {
		return password;
	}
	public String getMysqlUrl() {
		return mysqlUrl;
	}
}