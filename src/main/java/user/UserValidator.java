package user;

import java.sql.*;

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
	  if(conn!=null)conn.close();
  }
}