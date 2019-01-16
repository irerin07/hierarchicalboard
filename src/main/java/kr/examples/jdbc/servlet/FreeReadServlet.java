package kr.examples.jdbc.servlet;

import kr.examples.jdbc.dto.Board;
import kr.examples.jdbc.dao.BoardDao;
import kr.examples.jdbc.dao.BoardDaoImpl;
import kr.examples.jdbc.service.BoardService;
import kr.examples.jdbc.service.BoardServiceImpl;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "FreeReadServlet", urlPatterns = "/free/read")
public class FreeReadServlet extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp){
        String idStr = req.getParameter("id");
        System.out.println(idStr);
        Long id = 0L;
        try{
            id = Long.parseLong(idStr);
        }catch(Exception ex){
            // 오류 화면으로 redirect
            return;
        }
        BoardService boardService = new BoardServiceImpl();
        Board board = boardService.getBoard(id);
        if(board == null){
            // 오류 화면으로 redirect
            return;
        }
        //boardService.updateReadCount(id);

        req.setAttribute("board", board);

        RequestDispatcher requestDispatcher =
                req.getRequestDispatcher("/WEB-INF/views/freeread.jsp");
        try {
            requestDispatcher.forward(req, resp);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }


}
