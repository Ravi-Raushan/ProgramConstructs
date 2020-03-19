import java.util.Scanner;

public class TemperatureConversion {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.println("Enter Temperature");
        double temperature = scanner.nextDouble();
        System.out.println("Is Temperature is in Celsius Enter true or false");
        boolean isCelsius = scanner.nextBoolean();
        scanner.close();
        double temp = temperatureConversion(temperature, isCelsius);
        System.out.println(temp);
    }

    public static double temperatureConversion(double temp, boolean isCelsius) {
        double conTemp;
        if (isCelsius) {
            conTemp = (temp * 9) / 5 + 32;
        } else {
            conTemp = ((temp - 32) * 5) / 9;
        }

        return conTemp;
    }
}


