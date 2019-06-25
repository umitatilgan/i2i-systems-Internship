package FindingPalindromeWord;

import java.util.Scanner;

public class Palindrome {	
	 public static void main(String[] args) {
	      Scanner scann=new Scanner(System.in);
	       System.out.println("Enter Words.. : ");
	      String PalindromeWord=scann.nextLine();
	      String reverse="";

	int LengthWord=PalindromeWord.length();
		for(int i=LengthWord-1;i>=0;i--)  
		{
		    reverse=reverse+PalindromeWord.charAt(i);
	
		}
		System.out.println("Inverse : "+reverse); 

			if(PalindromeWord.equals(reverse)) 
			{
			    System.out.println("Palindrome");
		
			}  
			else
			{
			  System.out.println("Not Palidrome");
			}

      }
}
