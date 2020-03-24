package test.userregistration;

import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.junit.runners.Parameterized;
import userregistration.UserRegistration;

import java.util.Arrays;
import java.util.Collection;
@RunWith(Parameterized.class)
public class ParameterizedTest {
    private String emailTestResult;
    private boolean expectedResult;

    public ParameterizedTest(String email, boolean expectedResult) {
        this.emailTestResult = email;
        this.expectedResult = expectedResult;
    }

    @Parameterized.Parameters
    public static Collection data() {
        return Arrays.asList(new Object[][]{
                {"xyz@gmail.com", true},
                {"krravi015@gmail.com", true},
                {"abc-100@gmail.com", true},
                {"abc.100@gmail.com", true},
                {"abc-100@abc.net", true},
                {"abc.100@abc.com.au", true},
                {"abc@1.com", true},
                {"abc@gmail.com.com", true},
                {"abc+100@gmail.com", true},
                {"xyz.@gmail.com", false},
                {"xyz..@gmail.com", false},
                {"xyz@abc@gmail.com", false},
                {"xyz123@gmail..com", false},
                {"xyz.abc@.com", false},
                {"xyz.abc@gmail.c", false},
                {"xyz@gmail.com.", false},
                {"xyz@gmail.com.i", false},
                {"abc@gmail.com.in.", false}});
    }

    @Test
    public void givenEmail_WhenValid_ShouldReturnTrue_OR_False() {
        boolean result = UserRegistration.validateEmail(this.emailTestResult);
        Assert.assertEquals(this.expectedResult, result);

    }
}

