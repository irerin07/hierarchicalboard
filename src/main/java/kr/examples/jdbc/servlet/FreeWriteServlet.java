package kr.examples.jdbc.servlet;

import kr.examples.jdbc.dao.Board;
import kr.examples.jdbc.dao.BoardDao;
import kr.examples.jdbc.dao.BoardDaoImpl;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "FreeWriteServlet", urlPatterns = "/free/write")
public class FreeWriteServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        RequestDispatcher requestDispatcher =
                req.getRequestDispatcher("/WEB-INF/views/freewrite.jsp");
        requestDispatcher.forward(req, resp);
    }
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        String name = req.getParameter("name");
        System.out.println(name);
        String title = req.getParameter("title");
        System.out.println(title);
        String content = req.getParameter("content");
        System.out.println(content);

        BoardDao boardDao = new BoardDaoImpl();
        Board board = new Board(title, content, name);
        if(boardDao.addBoard(board) > 0){
            resp.sendRedirect("/writesuccess");
        }
        //resp.sendRedirect("/free/list");
    }
}