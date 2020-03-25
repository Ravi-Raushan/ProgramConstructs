package com.testmood;
import com.opencsv.bean.CsvBindByName;
public class CsvUser {
    @CsvBindByName(column = "Name", required = true)
    private String name;

    @CsvBindByName(column = "Roll Num", required = true)
    private String rollNo;

    @CsvBindByName(column = "Phone Num")
    private String phoneNo;

    @CsvBindByName(column = "State")
    private String state;
    public String getName(){
        return name;
    }
    public String getRollNo(){
        return rollNo;
    }
    public String getPhoneNo(){
        return phoneNo;
    }
    public String getState(){
        return state;
    }
}

