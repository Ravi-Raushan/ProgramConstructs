package com.testmood;
public class MoodAnaliser {
    public String analiseMood(String message) throws MoodAnaliserException  {
        try {
            if (message.length()==0)
                throw new MoodAnaliserException("Please Enter Some message");
            else if (message.contains("happy"))
                return "happy";
            else
                return "sad";
        }
        catch (NullPointerException e){
            throw new MoodAnaliserException("Please Enter proper Value");
        }
        }
}

