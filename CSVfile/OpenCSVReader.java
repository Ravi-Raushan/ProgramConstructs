package com.testmood;
import com.opencsv.CSVReader;
import com.opencsv.CSVReaderBuilder;

import java.io.FileReader;
import java.io.IOException;
import java.io.Reader;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.List;

public class OpenCSVReader {
    private static final String SAMPLE_CSV_FILE_PATH = "C:\\Users\\Ravi Raushan\\Desktop\\Sample.csv";

    public static void main(String[] args) throws IOException {
        try (
              //  Reader reader = Files.newBufferedReader(Paths.get(SAMPLE_CSV_FILE_PATH));
                FileReader reader = new FileReader("C:\\Users\\Ravi Raushan\\Desktop\\Sample.csv");
                CSVReader csvReader = new CSVReader(reader);
               // CSVReader csvReader = new CSVReaderBuilder(reader).withSkipLines(1).build(); \\use to skip header
        ) {
            // Reading Records One by One in a String array
            String[] nextRecord;
            while ((nextRecord = csvReader.readNext()) != null) {
                System.out.printf("%-12s %-8s  %-10s  %-7s\n",nextRecord[0],nextRecord[1],nextRecord[2],nextRecord[3]);
            }
            // Reading All Records at once into a List<String[]>
           /* List<String[]> records = csvReader.readAll();
            for (String[] record : records) {
                System.out.printf("%-12s %-8s  %-10s  %-7s\n",record[0],record[1],record[2],record[3]);
            }*/
            System.out.println("** CSV file Reading Task Completed **");
        }
    }

}

