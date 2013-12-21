package ur.user.controller;

import org.apache.shiro.authc.credential.DefaultPasswordService;
import org.apache.shiro.authc.credential.PasswordService;
import org.apache.shiro.crypto.hash.Sha256Hash;
import org.apache.shiro.crypto.hash.Sha512Hash;
import ur.user.model.DbAccess;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/reg")
public class RegServlet extends HttpServlet {

    private String username;
    private String password;
    private String email;
    private String name;


    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    //super.doPost(req, resp);
        DbAccess dbAccess = new DbAccess();
        username = req.getParameter("username");
        email =  req.getParameter("email");
        name = req.getParameter("name");
        this.password = req.getParameter("password");

        PasswordService svc = new DefaultPasswordService();
        String encrypted = svc.encryptPassword(this.password);

        try {
            dbAccess.insertUser(username, email, name, encrypted);
            dbAccess.assignRole(username);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }


}
