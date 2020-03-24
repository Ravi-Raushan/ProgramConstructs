package com.moodtest;

import com.testmood.MoodAnaliser;
import com.testmood.MoodAnaliserException;
import org.junit.Assert;
import org.junit.Test;
import org.junit.rules.ExpectedException;

public class MoodAnaliserTest {
    @Test
    public void givenNullMoodShouldThrowException(){
        MoodAnaliser moodAnaliser=new MoodAnaliser();
        try {
            ExpectedException exceptionRule=ExpectedException.none();
            exceptionRule.expect(MoodAnaliserException.class);
            String mood = moodAnaliser.analiseMood(null);
        }
        catch ( MoodAnaliserException e){
            Assert.assertEquals("Please Enter proper Value",e.getMessage());
        }
    }
    @Test
    public void givenEmptyMoodShouldThrowException(){
        MoodAnaliser moodAnaliser=new MoodAnaliser();
        try {
            ExpectedException exceptionRule=ExpectedException.none();
            exceptionRule.expect(MoodAnaliserException.class);
            String mood = moodAnaliser.analiseMood("");
        }
        catch ( MoodAnaliserException e){
            Assert.assertEquals("Please Enter Some message",e.getMessage());
        }
    }
}

