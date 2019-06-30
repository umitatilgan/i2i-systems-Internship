package operation;

import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;

public class MathOperation {
	
	public  String GetXmlString(int Parameter1, int Parameter2, int OperationNumber) {
        
        String xml = "<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n" + 
                    "<soap12:Envelope xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:soap12=\"http://www.w3.org/2003/05/soap-envelope\">\r\n" + 
                    "  <soap12:Body>\r\n" + 
                    "    <OPERATION xmlns=\"http://tempuri.org/\">\r\n" + 
                    "      <intA>PARAMETER1</intA>\r\n" + 
                    "      <intB>PARAMETER2</intB>\r\n" + 
                    "    </OPERATION>\r\n" + 
                    "  </soap12:Body>\r\n" + 
                    "</soap12:Envelope>";
       
        
       xml = xml.replace( "PARAMETER1", Integer.toString(Parameter1));
       xml = xml.replace( "PARAMETER2", Integer.toString(Parameter2));
       xml = xml.replace( "OPERATION",  GetOperation(OperationNumber));
       return xml;
       
   }
   
   public String GetOperation(int OperationNumber) {
       
       String operation;
       switch (OperationNumber) {
       case 1: operation = "Add";    
           break;
       case 2: operation = "Divide";
           break;
       case 3: operation = "Multiply";            
           break;
       case 4: operation = "Subtract";            
           break;            
       default: operation = "Add";
           break;
       }
       return operation;
       
   }
   
   public String getUrl(int operationNumber) {
       
       String url = "http://www.dneonline.com/calculator.asmx?op=";
       
       String operation = GetOperation(operationNumber);
       
       return url + operation;
       
   }

   public  String getResponse(int parameter1, int parameter2, int operationNumber) {
        try {
            String UrlString = getUrl(operationNumber);
            
            URL UrlObject = new URL(UrlString);
            HttpURLConnection connection = (HttpURLConnection) UrlObject.openConnection();
            
            connection.setRequestMethod("POST");
            connection.setRequestProperty("Content-Type","text/xml; charset=utf-8");
            
            String xml = GetXmlString(parameter1, parameter2, operationNumber);
            connection.setDoOutput(true);
           
            DataOutputStream wr = new DataOutputStream(connection.getOutputStream());
            wr.writeBytes(xml);
            wr.flush();
            wr.close();

            
            BufferedReader in = new BufferedReader(new InputStreamReader( connection.getInputStream() ) );
            String inputLine;
            
            StringBuffer response = new StringBuffer();
            while ((inputLine = in.readLine()) != null) {
            response.append(inputLine);
            }
            in.close();

            return response.toString();
        } catch (Exception e) {
            System.out.println(e);
            return null;
        }
}
   public String getResultFromXml(String xml) {
       
       int beginIndex = xml.indexOf("Result>") + 7;
       int endIndex = xml.indexOf("</") ;
       return xml.substring(beginIndex,endIndex);
   }
   
   public String Operate(int parameter1, int Parameter2, int OperationNumber) {
       
       String xml = getResponse(parameter1, Parameter2, OperationNumber);
       String result = getResultFromXml(xml);
       return result;
       
   }
   
   public static void main(String[] args) {
       
       for(int i = 0; i < args.length; i++) {
           
           System.out.println(args[i]);
           
       }
   }
}
