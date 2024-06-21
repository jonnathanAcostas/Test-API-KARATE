package users;

import com.intuit.karate.junit5.Karate;

public class UserPostRunner {
    @Karate.Test
    Karate userPost() {
        return Karate.run("users").relativeTo(getClass());
    }
}
