package properties.java;
import java.io.FileReader;
import java.io.IOException;
import java.util.Map;
import java.util.Properties;
import java.util.Set;

public class ReadPropertiesFile {
    public static void main(String[] aegs) throws IOException {

        FileReader fileReader = new FileReader("C:\\Users\\Ravi Raushan\\Desktop\\db.txt");
        Properties properties = new Properties();
        properties.load(fileReader);
        System.out.println("** Reading value after passing key **");
        System.out.println("url : "+properties.getProperty("url"));
        System.out.println("user name : "+properties.getProperty("userName"));
        System.out.println("password : "+properties.getProperty("password"));
        System.out.println("secret question : "+properties.getProperty("secQuestion"));
        System.out.println("** Reading one by one key value pair **");
        Set set=properties.entrySet();
        for (Object obj : set) {
            Map.Entry entry = (Map.Entry) obj;
            System.out.println(entry.getKey() + " : " + entry.getValue());
        }
        System.out.println("** Reading System Properties **");
        readSystemProperties();
    }
    public static void readSystemProperties(){
        Properties systemProperties = System.getProperties();
        Set set = systemProperties.entrySet();
        for (Object obj : set) {
            Map.Entry entry = (Map.Entry) obj;
            System.out.println(entry.getKey() + " : " + entry.getValue());
        }
    }
}

