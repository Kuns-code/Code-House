import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/hello")
public class HelloServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //在字符串服务器控制台，
        System.out.println("hello world");
        //这是给resp的body写入的 hello world字符串，这个内容就会被 HTTP 响应返回给浏览器，显示到浏览器上
        resp.getWriter().write("hello world");
    }
}
