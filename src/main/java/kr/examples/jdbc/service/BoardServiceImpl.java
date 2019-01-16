package kr.examples.jdbc.service;

import kr.examples.jdbc.dao.BoardDao;
import kr.examples.jdbc.dao.BoardDaoImpl;
import kr.examples.jdbc.dto.Board;
import kr.examples.jdbc.util.ConnectionContextHolder;
import kr.examples.jdbc.util.DBUtil;

import java.sql.Connection;
import java.util.ArrayList;
import java.util.List;

public class BoardServiceImpl implements BoardService{
    public static final int SIZE = 3;

    @Override
    public List<Board> getBoards(int page) {
        BoardDao boardDao = new BoardDaoImpl();
        int start = page * SIZE -SIZE;
        int limit = SIZE;

        Connection conn = null;
        List<Board> boards = new ArrayList<>();
        try {
            conn = DBUtil.getInstance().getConnection();
            ConnectionContextHolder.setConnection(conn);
            boards = boardDao.getBoards(start, limit);

        }catch(Exception ex){
            ex.printStackTrace();
        }finally {
            DBUtil.close(conn);
        }
        return boards;
    }

    @Override
    public Board getBoard(Long id) {
        Board board = null;
        Connection conn = null;
        BoardDao boardDao = new BoardDaoImpl();
        try {
            conn = DBUtil.getInstance().getConnection();
            ConnectionContextHolder.setConnection(conn);
            board = boardDao.getBoard(id);
            boardDao.updateReadCount(id);
            conn.commit(); // 트랜젝션 commit
        }catch(Exception ex){
            DBUtil.rollback(conn);
            ex.printStackTrace();
        }finally {
            DBUtil.close(conn);
        }
        return board;
    }

    @Override
    public void addBoard(Board board) {
        Connection conn = null;
        BoardDao boardDao = new BoardDaoImpl();
        try{
            conn = DBUtil.getInstance().getConnection();
            ConnectionContextHolder.setConnection(conn);
            boardDao.addBoard(board);
            boardDao.updateFamily();
            conn.commit();
        }catch(Exception ex){
            DBUtil.rollback(conn);
            ex.printStackTrace();
        }finally{
            DBUtil.close(conn);
        }
    }

    @Override
    public void deleteBoard(Long id) {
        Connection conn = null;
        BoardDao boardDao = new BoardDaoImpl();
        try {
            conn = DBUtil.getInstance().getConnection();
            ConnectionContextHolder.setConnection(conn);
            boardDao.deleteBoard(id);
            conn.commit(); // 트랜젝션 commit
        }catch(Exception ex){
            DBUtil.rollback(conn);
            ex.printStackTrace();
        }finally {
            DBUtil.close(conn);
        }
    }

    @Override
    public void updateFamily(long id) {
        Connection conn = null;
        BoardDao boardDao = new BoardDaoImpl();
        try {
            conn = DBUtil.getInstance().getConnection();
            ConnectionContextHolder.setConnection(conn);
            boardDao.updateFamily();
            conn.commit(); // 트랜젝션 commit
        }catch(Exception ex){
            DBUtil.rollback(conn);
            ex.printStackTrace();
        }finally {
            DBUtil.close(conn);
        }
    }

    @Override
    public Long getBoardId() {
        return null;
    }

//    @Override
//    public Long getBoardId() {
//        Connection conn = null;
//        BoardDao boardDao = new BoardDaoImpl();
//        long id = 0;
//        try{
//            conn = DBUtil.getInstance().getConnection();
//            ConnectionContextHolder.setConnection(conn);
//            id = boardDao.getBoardId();
//        }catch(Exception ex){
//            ex.printStackTrace();
//        }finally{
//            DBUtil.close(conn);
//        }
//        return id;
//    }
}