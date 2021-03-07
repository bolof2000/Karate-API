package helper;
import com.github.javafaker.Faker;

public class DataGenerator {


    public static Faker faker = new Faker();
    public static String getRandomEmail(){

      
        String email = faker.name().firstName().toLowerCase() + faker.random().nextInt(0,100) + "@test.com";

        return email; 
    }

    public static String getRandomeUsername(){

       String username =  faker.name().username().toLowerCase();

       return username; 
    }

      
}
