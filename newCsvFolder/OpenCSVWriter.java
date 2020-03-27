package com.csvfile.java;

import com.opencsv.CSVWriter;
import java.io.FileWriter;
import java.io.IOException;

public class OpenCSVWriter  {

    public static void main(String[] args) throws IOException {
       try(
        FileWriter fileWriter = new FileWriter("Sample.csv");
        CSVWriter csvWriter = new CSVWriter(fileWriter,
                CSVWriter.DEFAULT_SEPARATOR,
                CSVWriter.NO_QUOTE_CHARACTER,
                CSVWriter.DEFAULT_ESCAPE_CHARACTER,
                CSVWriter.DEFAULT_LINE_END);
       ) {
            csvWriter.writeNext(new String[]{"Name", "Email Id", "Phone No", "State"});
            csvWriter.writeNext(new String[]{"Ravi", "krravi015@gmail.com", "9771949354", "Bihar"});
            csvWriter.writeNext(new String[]{"Aayush", "abc@gmail.com", "8542919226", "Kerla"});
            csvWriter.writeNext(new String[]{"Mohan", "myacc015@gmail.com", "9304033311", "UP"});
        }
    }
}

