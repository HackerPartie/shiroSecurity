package ur.user.model;

import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.credential.PasswordMatcher;

public class TempFixPasswordMatcher extends PasswordMatcher {

    @Override
    protected Object getStoredPassword(AuthenticationInfo storedAccountInfo) {
        Object stored = super.getStoredPassword(storedAccountInfo);
        if (stored instanceof char[]) {
            return new String((char[])stored);
        }
        return stored;
    }
}
