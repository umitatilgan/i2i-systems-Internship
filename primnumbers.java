//all prime numbers between 1 and 20
package primesnumber;
import java.util.Scanner;

public class PrimeNumber {
	public static void main(String[] args) {                
        int control = 0;        
        for(int i=2; i<=20;i++){
            
            for(int j=2;j<i;j++){                

                if(i%j == 0){
                    control = 1;
                }
            }
            if(control == 0){
               System.out.println(i);
            }else{
               control = 0; 
            }     
        }
    }	
}
