package test.userregistration;

import org.junit.Assert;
import org.junit.Test;
import userregistration.UserRegistration;

public class UserRegistrationTest {
    @Test
    public void checkForShortLengthName(){
        Assert.assertEquals(false, UserRegistration.validateUserName("Ra"));
    }
    @Test
    public void checkForSpecialCharInName(){
        Assert.assertEquals(false, UserRegistration.validateUserName("Ravi@"));
    }
    @Test
    public void checkForNumInName(){
        Assert.assertEquals(false, UserRegistration.validateUserName("Ra8v"));
    }
    @Test
    public void checkFor2CapLetterInName(){
        Assert.assertEquals(false, UserRegistration.validateUserName("RaVi"));
    }
    @Test
    public void checkForStartingLetterOfName(){
        Assert.assertEquals(false, UserRegistration.validateUserName("ravi"));
    }
    @Test
    public void checkForCorrectName(){
        Assert.assertEquals(true, UserRegistration.validateUserName("Ravi"));
    }
    @Test
    public void checkForInvalidCountryCode(){
        Assert.assertEquals(false, UserRegistration.validatePhoneNumber("03 9771949354"));
    }
    @Test
    public void checkForShortCountryCode(){
        Assert.assertEquals(false, UserRegistration.validatePhoneNumber("9 97719493545"));
    }
    @Test
    public void checkForLongCountryCode(){
        Assert.assertEquals(false, UserRegistration.validatePhoneNumber("912 977194935"));
    }
    @Test
    public void checkForCountryCodeWithoutNum(){
        Assert.assertEquals(false, UserRegistration.validatePhoneNumber("A2 9771949354"));
    }
    @Test
    public void checkForShortPhoneNumber(){
        Assert.assertEquals(false, UserRegistration.validatePhoneNumber("91 977194935"));
    }
    @Test
    public void checkForLongPhoneNumber(){
        Assert.assertEquals(false, UserRegistration.validatePhoneNumber("91 97719493548"));
    }
    @Test
    public void checkForPhoneNumberIncAlphabet(){
        Assert.assertEquals(false, UserRegistration.validatePhoneNumber("91 A771949354"));
    }
    @Test
    public void checkForCorrectPhoneNumber(){
        Assert.assertEquals(true, UserRegistration.validatePhoneNumber("91 9771949354"));
    }
    @Test
    public void checkForInvalidEmail0(){
        Assert.assertEquals(false, UserRegistration.validateEmail("@gmail.com.in."));
    }
    @Test
    public void checkForInvalidEmail1(){
        Assert.assertEquals(false, UserRegistration.validateEmail("kr@gmail.com"));
    }
    @Test
    public void checkForInvalidEmail2(){
        Assert.assertEquals(false, UserRegistration.validateEmail("krravi@.com"));
    }
    @Test
    public void checkForInvalidEmail3(){
        Assert.assertEquals(false, UserRegistration.validateEmail("krra..@gmail.com"));
    }
    @Test
    public void checkForInvalidEmail4(){
        Assert.assertEquals(false, UserRegistration.validateEmail("krr@vi@gmail.com"));
    }
    @Test
    public void checkForInvalidEmail5(){
        Assert.assertEquals(false, UserRegistration.validateEmail("krr.@gmail.com"));
    }
    @Test
    public void checkForInvalidEmail6(){
        Assert.assertEquals(false, UserRegistration.validateEmail("krravi015@gmail.c"));
    }
    @Test
    public void checkForInvalidEmail7(){
        Assert.assertEquals(false, UserRegistration.validateEmail("krravi015@gmail.com.i"));
    }
    @Test
    public void checkForInvalidEmail8(){
        Assert.assertEquals(false, UserRegistration.validateEmail("krravi015@gmail.com.in."));
    }
    @Test
    public void checkForInvalidEmail9(){
        Assert.assertEquals(false, UserRegistration.validateEmail("krravi015@.gmail.com"));
    }
    @Test
    public void checkForInvalidEmail(){
        Assert.assertEquals(false, UserRegistration.validateEmail("krravi015@gmail..in"));
    }
    @Test
    public void checkForValidEmail10(){
        Assert.assertEquals(true, UserRegistration.validateEmail("krravi015@gmail.com"));
    }
    @Test
    public void checkForValidEmail11(){
        Assert.assertEquals(true, UserRegistration.validateEmail("xyz.abc@gmail.com"));
    }
    @Test
    public void checkForValidEmail12(){
        Assert.assertEquals(true, UserRegistration.validateEmail("xyz-123@gmail.com"));
    }
    @Test
    public void checkForValidEmail13(){
        Assert.assertEquals(true, UserRegistration.validateEmail("xyz.123@gmail.com.in"));
    }
    @Test
    public void checkForValidEmail14(){
        Assert.assertEquals(true, UserRegistration.validateEmail("krravi015@gmail.co.in"));
    }
    @Test
    public void checkForValidEmail15(){
        Assert.assertEquals(true, UserRegistration.validateEmail("abc@gmail.co.in"));
    }
    @Test
    public void checkForInvalidPasswordMissingCapLetter(){
        Assert.assertEquals(false, UserRegistration.validatePassword("ravi015@"));
    }
    @Test
    public void checkForInvalidPasswordMissingSmallLetter(){
        Assert.assertEquals(false, UserRegistration.validatePassword("RAVI015@"));
    }
    @Test
    public void checkForInvalidPasswordMissingNumbber(){
        Assert.assertEquals(false, UserRegistration.validatePassword("Ravirausha@"));
    }
    @Test
    public void checkForInvalidPasswordMissingSpecChar(){
        Assert.assertEquals(false, UserRegistration.validatePassword("Ravi0152"));
    }
    @Test
    public void checkForInvalidPasswordShortLength(){
        Assert.assertEquals(false, UserRegistration.validatePassword("Ravi01@"));
    }
    @Test
    public void checkForValidPassword1(){
        Assert.assertEquals(true, UserRegistration.validatePassword("Ravi015@"));
    }
    @Test
    public void checkForValidPassword2(){
        Assert.assertEquals(true, UserRegistration.validatePassword("Rk015123#"));
    }
    @Test
    public void checkForValidPassword3(){
        Assert.assertEquals(true, UserRegistration.validatePassword("$596L12r"));
    }
    @Test
    public void checkForValidPassword4(){
        Assert.assertEquals(true, UserRegistration.validatePassword("11111%11%Ps"));
    }
}

