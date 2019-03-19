package test01;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Test {

	public static void main(String[] args) {
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String user = "osfu";
		String pwd = "12345678";
		try {
			java.sql.Connection connec = DriverManager.getConnection(url,user,pwd);
			String sql ="select * from food";
			PreparedStatement ps = connec.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				System.out.println(rs.getString("food_name"));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		
		
	}
}
