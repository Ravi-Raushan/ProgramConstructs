package com.testmood;
import com.opencsv.bean.CsvToBean;
import com.opencsv.bean.CsvToBeanBuilder;

import java.io.FileReader;
import java.io.IOException;
import java.io.Reader;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.Iterator;
import java.util.List;
public class OpenCSVReadAndParseToBean {
  //  private static final String SAMPLE_CSV_FILE_PATH = "C:\\Users\\Ravi Raushan\\Desktop\\Sample.csv";

    public static void main(String[] args) throws IOException {
        try (
                // Reader reader = Files.newBufferedReader(Paths.get(SAMPLE_CSV_FILE_PATH));
                FileReader reader = new FileReader("C:\\Users\\Ravi Raushan\\Desktop\\Sample.csv");
        ) {
            CsvToBean<CsvUser> csvToBean = new CsvToBeanBuilder(reader).withType(CsvUser.class).withIgnoreLeadingWhiteSpace(true).build();

            Iterator<CsvUser> csvUserIterator = csvToBean.iterator();

            while (csvUserIterator.hasNext()) {
                CsvUser csvUser = csvUserIterator.next();
                System.out.println("Name : " + csvUser.getName());
                System.out.println("RollNo : " + csvUser.getRollNo());
                System.out.println("PhoneNo : " + csvUser.getPhoneNo());
                System.out.println("State : " + csvUser.getState());
                System.out.println("==========================");
            }
        }
    }
}

