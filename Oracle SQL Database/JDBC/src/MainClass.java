import java.sql.Statement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 * D:\app\사용자이름\product\11.2.0\dbhome_1\jdbc\lib\ojdbc6.jar
 * ojdbc6.jar 라이브러리에 추가 필수!!!
 */

public class MainClass {

	static final String driver = "oracle.jdbc.OracleDriver";
	static final String url = "jdbc:oracle:thin:@localhost:1521:orcl";
	static final String id = "TEST_1";
	static final String pw= "password";
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub

		try {
			//addData();
			getData();
		}
		catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}

	public static void addData() throws Exception {
		// JDBC 드라이버 로딩
		Class.forName(driver);
		// 접속
		Connection db = DriverManager.getConnection(url, id, pw);
		
		// 쿼리문
		String sql = "insert into test_table (test_idx, test_number, test_str) values (test_seq.nextval, ?, ?)";
		PreparedStatement pstmt = db.prepareStatement(sql);
		
		pstmt.setInt(1, 100);
		pstmt.setString(2, "문자열1");
		pstmt.execute();
		
		pstmt.setInt(1, 200);
		pstmt.setString(2, "문자열2");
		pstmt.execute();
		
		db.close();
		
		System.out.println("저장완료");
	}
	
	public static void getData() throws Exception {
		Class.forName(driver);
		Connection db = DriverManager.getConnection(url, id, pw);
		
		String sql = "select test_idx, test_number, test_str from test_table";
		Statement stmt = db.createStatement();
		
		ResultSet rs = stmt.executeQuery(sql);
		
		while(rs.next()) {
			int test_idx = rs.getInt("test_idx");
			int test_number = rs.getInt("test_number");
			String test_str = rs.getString("test_str");
			
			System.out.println("test_idx: " + test_idx);
			System.out.println("test_number: " + test_number);
			System.out.println("test_str: " + test_str);
		}
		
		db.close();
	}
}
