package RepeatingNumber; 

public class Number {
	static boolean isPartOf(int n, int[] arr) {
		for (int i = 0; i < arr.length; i++) {
			if (n == arr[i])
				return true;
		}
		return false;
	}
	static void writeRepeat(int[] array) {		
		int InitialRepeatValue = 0;
		int[] result = new int[array.length/2];
		int[] recorded = new int[array.length];
		
		for (int i = 0; i < array.length; i++) {
			
			if (!isPartOf(array[i], result)) {
				if (isPartOf(array[i], recorded)) {
					result[InitialRepeatValue++] = array[i];
				} else {
					recorded[i] = array[i];
				}				
			}
		}
		if (InitialRepeatValue == 0) {
			System.out.print("No Repeat Any Number");
		} else {
			for (int i = 0; i < result.length; i++) {
				if (result[i] != 0)
					System.out.print(result[i] + " ");
			}
		}
		System.out.println(" ");
	}	
	public static void main(String[] args) {
		int[] array1= {1,3,5,7,9,9,9,12,10};
		int[] array2= {2,4,6,8,10};
		int[] array3= {12,12,12,5,6,6,7,8,9};
			
		writeRepeat(array1);
		writeRepeat(array2);
		writeRepeat(array3);		
	}	
}
	
