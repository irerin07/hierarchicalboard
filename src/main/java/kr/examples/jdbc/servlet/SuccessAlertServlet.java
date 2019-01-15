package kr.examples.jdbc.servlet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "SuccessAlertServlet", urlPatterns = "/writesuccess")
public class SuccessAlertServlet extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html");
        resp.setCharacterEncoding("UTF-8");
        PrintWriter pw=resp.getWriter();
        pw.println("<script type=\"text/javascript\">");
        pw.println("alert('글을 성공적으로 등록 했습니다.');");
        pw.println("location='/free/list';");
        pw.println("</script>");

    }

}
