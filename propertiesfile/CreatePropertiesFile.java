package properties.java;
import java.io.FileWriter;
import java.util.Properties;
public class CreatePropertiesFile {
    public static void main(String[] args)throws Exception {
        Properties properties = new Properties();
        properties.setProperty("name", "Ravi Raushan");
        properties.setProperty("email", "krravi015@gmail.com");
        properties.setProperty("phoneNo", "9771949354");
        FileWriter fileWriter = new FileWriter("C:\\Users\\Ravi Raushan\\Desktop\\RaviInfo.properties");
        properties.store(fileWriter,"this is my properties file");
    }

}

