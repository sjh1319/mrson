package mail;

import javax.mail.*;

public class GoogleAuthentication extends Authenticator {
    PasswordAuthentication passAuth;
    
    
    public GoogleAuthentication() {
        passAuth = new PasswordAuthentication("sjh1319", "dmsrkfcl2146");
    }
    
    public PasswordAuthentication getPasswordAuthentication() {
        return passAuth;
    }
}
