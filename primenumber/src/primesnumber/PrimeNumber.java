package primesnumber;

import java.util.Scanner;

public class PrimeNumber {
	public static void main(String[] args) {        

        Scanner scan = new Scanner(System.in);
        System.out.println("Enter Upper Value Limit : ");
        int deger = scan.nextInt();
        int kontrol = 0;

        if(deger<2){
            System.out.println("The smallest prime number is 2.");
        }

        for(int i=2; i<=deger;i++){
            
            for(int j=2;j<i;j++){                

                if(i%j == 0){
                    kontrol = 1;
                }
            }

            if(kontrol == 0){
               System.out.println(i);
            }else{
               kontrol = 0; 
            }     
        }
    }
	
	
	
}
