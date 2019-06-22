package primesnumber;

import java.util.Scanner;

public class PrimeNumber {
	public static void main(String[] args) {        

        Scanner scan = new Scanner(System.in);
        System.out.println("Enter Upper Value Limit : ");
        int number = scan.nextInt();
        int control = 0;

        if(number<2){
            System.out.println("The smallest prime number is 2.");
        }

        for(int i=2; i<=number;i++){
            
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
