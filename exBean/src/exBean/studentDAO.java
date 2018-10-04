package exBean;
import java.sql.*;
public class studentDAO {
 public void insertStudent(studentVO item) throws Exception {
  String no = item.getNo();
  String name = item.getName();


  Class.forName("oracle.jdbc.driver.OracleDriver");
  Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","201412406","201412406");

 

  PreparedStatement pstmt = conn.prepareStatement("insert into student values(?,?)");
  pstmt.setString(1,no);
  pstmt.setString(2,name);
  pstmt.executeUpdate();

 

  pstmt.close();

  conn.close();
 }
 
}