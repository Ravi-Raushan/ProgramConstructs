package com.csvfile.java;

import com.opencsv.CSVReader;

import java.io.FileReader;
import java.io.IOException;

public class OpenCSVReader {
    public static void main(String[] args) throws IOException {
        FileReader fileReader = new FileReader("Sample.csv");
        CSVReader csvReader = new CSVReader(fileReader);
        String[] nextRecord;
        while((nextRecord = csvReader.readNext()) != null){
            System.out.printf("%-10s %-20s  %-10s  %-7s\n",nextRecord[0],nextRecord[1],nextRecord[2],nextRecord[3]);
        }
        System.out.println("** CSV file Reading Task Completed **");
    }
}

