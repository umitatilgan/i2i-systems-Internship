package application;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Random;



import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.scene.control.Label;
import javafx.scene.control.Labeled;
import javafx.scene.control.TextField;

public class MainController {
	
	@FXML
	private Label first_name_label;
	@FXML
	private Label last_name_label;
	@FXML
	private Label university_name_label;
	@FXML
	private Label deparment_label;
	
	@FXML
	private TextField first_name_text;
	@FXML
	private TextField last_name_text;
	@FXML
	private TextField university_name_text;
	@FXML
	private TextField department_text;
	
	
	public void send_button(ActionEvent event){
		String Insert_Student="INSERT INTO system.Student"
				+" (First_Name,Last_Name,Universty_Name,Department) " + " VALUES (?,?,?,?)";
		try {
		
		Connection conn = getConnection();
		
		PreparedStatement preparedStatement = conn.prepareStatement(Insert_Student);

		preparedStatement.setString(1, first_name_text.getText());
		preparedStatement.setString(2, last_name_text.getText());
		preparedStatement.setString(3, university_name_text.getText());
		preparedStatement.setString(4, department_text.getText());
		
		preparedStatement.executeUpdate();	
		conn.commit();
		  }
		catch (Exception e) {
			e.printStackTrace();
			} 
		}
		
public Connection getConnection () throws SQLException {
Connection conn = DriverManager.getConnection(
                "jdbc:oracle:thin:@localhost:1521:", "SYSTEM", "14058019");
return conn;	
	
}
}