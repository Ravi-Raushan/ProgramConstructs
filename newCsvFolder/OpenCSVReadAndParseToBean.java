package com.csvfile.java;

import com.opencsv.bean.CsvToBean;
import com.opencsv.bean.CsvToBeanBuilder;
import java.io.FileReader;
import java.io.IOException;
import java.util.Iterator;

public class OpenCSVReadAndParseToBean {
    public static void main(String[] args) throws IOException {
        try(
        FileReader fileReader = new FileReader("Sample.csv");
        ) {
            CsvToBean<CSVUser> csvToBean = new CsvToBeanBuilder(fileReader).withType(CSVUser.class).withIgnoreLeadingWhiteSpace(true).build();
            Iterator<CSVUser> itr = csvToBean.iterator();
            while (itr.hasNext()) {
                CSVUser csvUser = itr.next();
                System.out.println("Name : " + csvUser.getName());
                System.out.println("RollNo : " + csvUser.getEmailId());
                System.out.println("PhoneNo : " + csvUser.getPhoneNo());
                System.out.println("State : " + csvUser.getState());
                System.out.println("==========================");
            }
        }
    }
}

