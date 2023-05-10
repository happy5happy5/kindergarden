package test;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Types;

public class ImageToBlob {

	public static void main(String[] args) throws SQLException, IOException {
		String url = "jdbc:mysql://localhost:3306/kindergardendb";
		String user = "root";
		String password = "Allen8731!";
		Connection conn = DriverManager.getConnection(url, user, password);


		String sql = "INSERT INTO test_blob ( image) VALUES ( LOAD_FILE('c:/upload/1378725990210.jpg'))";
		PreparedStatement statement = conn.prepareStatement(sql);
		/*
		 * File imageFile = new File("c:/upload/1378725990210.jpg"); InputStream
		 * inputStream = new FileInputStream(imageFile);
		 * 
		 * if (inputStream != null) { statement.setBinaryStream(1, inputStream); }
		 */
		 

		statement.executeUpdate();

		statement.close();
		conn.close();
	}

}
