package com.csvfile.java;

import com.opencsv.bean.CsvBindByName;

public class CSVUser {
    @CsvBindByName(column = "Name", required = true, locale = "")
    private String name;

    @CsvBindByName(column = "Email Id")
    private String emailId;

    @CsvBindByName(column = "Phone No")
    private String phoneNo;

    @CsvBindByName(column = "State")
    private String state;

    public String getName(){
        return name;
    }
    public String getEmailId(){
        return emailId;
    }
    public String getPhoneNo(){
        return phoneNo;
    }
    public String getState(){
        return state;
    }
}

