import java.util.Scanner;

public class PalindromeCheck {
    public static void main(String [] args){
        Scanner scanner = new Scanner(System.in);
        System.out.println("Enter any Number");
       int initialNumber =  scanner.nextInt();
       scanner.close();
     if(isPallendrome(initialNumber))
         System.out.println("Pallendrome");
     else
         System.out.println("Not Pallendrome");
    }
    public static boolean isPallendrome(int originalNumber) {
        boolean status = false;
        int reverseNumber = 0;
        int num = originalNumber;
        while (num != 0) {
            int lastDigit = num % 10;
            reverseNumber = reverseNumber * 10 + lastDigit;
            num = num / 10;
        }
        if (originalNumber == reverseNumber) {
            status = true;
        }
        return status;
    }
}

