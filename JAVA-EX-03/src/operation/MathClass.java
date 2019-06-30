package operation;
import java.net.URL;
import java.util.ResourceBundle;
 
import javafx.application.Application;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.fxml.Initializable;
import javafx.stage.Stage;
import operation.MathOperation;
import javafx.scene.*;
import javafx.scene.control.ComboBox;
import javafx.scene.control.Label;
import javafx.scene.control.TextField;
 
public class MathClass extends Application implements Initializable{
 
    private final MathOperation soapTest = new MathOperation();
    
    @FXML
    private TextField txtParameter1;
    @FXML
    private TextField txtParameter2; 
    @FXML
    private ComboBox<String> cmbOperation;
    @FXML
    private Label lblResult;
    
    @Override
    public void start(Stage primaryStage) throws Exception {
 
        Parent root = FXMLLoader.load(getClass().getResource("SoapUserInterface.fxml"));
        Scene scene = new Scene(root);
        
        
        primaryStage.setScene(scene);
        primaryStage.show();
        
        
    }
    
    private boolean isNumeric(String string) {
        try {
            Integer.parseInt(string);
        } catch (NumberFormatException e) {
            return false;
        }
        return true;
        
    }
    
    public void operateAction() {
        
        String strParameter1 = txtParameter1.getText();
        String strParameter2 = txtParameter2.getText();
        
        int parameter1;
        int parameter2;
        
        try {
            parameter1 = Integer.parseInt(strParameter1);
            parameter2 = Integer.parseInt(strParameter2);
        } catch (NumberFormatException e) {
            System.out.println(e);
            lblResult.setText("Parameters should be numeric");
            return;
        }
        
        int OperationNumber = cmbOperation.getSelectionModel().getSelectedIndex() + 1;
        
        String result = soapTest.Operate(parameter1, parameter2, OperationNumber);
        lblResult.setText(result);
 
        
    }
    
    
    public static void main(String[] args) {
        
        launch(args);
    }
 
    @Override
    public void initialize(URL location, ResourceBundle resources) {
        
        cmbOperation.getItems().addAll("ADD","DIVIDE","MULTIPLY","SUBTRACT");
        cmbOperation.getSelectionModel().select(0);
        
        
        
    }
 
 
}