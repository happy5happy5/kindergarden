package user;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Base64;

import com.mysql.cj.jdbc.Blob;

public class UserValidator {
	private Connection conn;

	public UserValidator(Connection conn) {
		this.conn = conn;
	}

	public boolean isValidUser(String userid, String password) {
		try {
			PreparedStatement stmt = conn.prepareStatement("SELECT * FROM users WHERE userid=? AND password=?");

			stmt.setString(1, userid);
			stmt.setString(2, password);

			ResultSet rs = stmt.executeQuery();

			return rs.next();
		} catch (SQLException e) {
			System.err.println("SQLException: " + e.getMessage());
			return false;
		}
	}

	public boolean isValidUser(String userid) {
		try {
			PreparedStatement stmt = conn.prepareStatement("SELECT * FROM users WHERE userid=?");
			stmt.setString(1, userid);
			ResultSet rs = stmt.executeQuery();
			return rs.next();
		} catch (SQLException e) {
			System.err.println("SQLException: " + e.getMessage());
			return false;
		}
	}

	public void disconn() throws SQLException {
		if (conn != null)
			conn.close();
	}

	public void testinsert() {
		try {
			File image = new File("c:/upload/image1.jpg");
			FileInputStream fis = new FileInputStream(image);
			PreparedStatement ps = conn.prepareStatement("INSERT INTO test_blob (image) VALUES(?)");

			ps.setBinaryStream(1, fis, (int) image.length());
			ps.executeUpdate();
		} catch (SQLException | FileNotFoundException e) {
			e.printStackTrace();
		}
	}

	public String testprojector() {
		byte[] bytes = null;
		try {
			PreparedStatement ps = conn.prepareStatement("SELECT image FROM test_blob WHERE id = ?");
			ps.setString(1, "1");
			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
				Blob blob = (Blob) rs.getBlob("image");
				InputStream inputStream = blob.getBinaryStream();
				bytes = inputStream.readAllBytes();
				// Use bytes to create an image
			}
		} catch (SQLException | IOException e) {
			e.printStackTrace();
		}
		return Base64.getEncoder().encodeToString(bytes);

	}

	public boolean signup(String userId, String password, String phone, String email) {
		PreparedStatement stmt;
		try {
			stmt = conn.prepareStatement("INSERT INTO users (userid, password, phone, email) VALUES (?, ?, ?, ?)");
			stmt.setString(1, userId);
			stmt.setString(2, password);
			stmt.setString(3, phone);
			stmt.setString(4, email);
			stmt.executeUpdate();
			return true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}
	}

	public boolean deleteUser(String id) {
		try {
			String query = "DELETE FROM users WHERE userid=?";
			PreparedStatement stmt = conn.prepareStatement(query);
			stmt.setString(1, id);
			stmt.executeUpdate();
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	public void updateUser(String userid, String email, String phone, String address, String password) {
		try {
			PreparedStatement stmt = conn
					.prepareStatement("UPDATE users SET email=?, phone=?, address=?, password=? WHERE userid=?");

			stmt.setString(1, email);
			stmt.setString(2, phone);
			stmt.setString(3, address);
			stmt.setString(4, password);
			stmt.setString(5, userid);

			stmt.executeUpdate();
		} catch (SQLException e) {
			System.err.println("SQLException: " + e.getMessage());
		}
	}
	
	public String getUserInfo(String userid, String info) {
		try {
			PreparedStatement stmt = conn.prepareStatement("SELECT * FROM users WHERE userid=?");
			stmt.setString(1, userid);
			ResultSet rs = stmt.executeQuery();
			while (rs.next()) {
				return rs.getString(info);
			}
		} catch (SQLException e) {
		      System.err.println("SQLException: " + e.getMessage());
		}
		return null;
	}

}