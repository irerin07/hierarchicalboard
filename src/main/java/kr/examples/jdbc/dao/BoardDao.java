package kr.examples.jdbc.dao;

import java.util.List;

public interface BoardDao {
    public Board getBoard(Long id);

    public List<Board> getBoards(int start, int limit);

    int addBoard(Board board);

    void deleteBoard(Long id);

    void updateReadCount(long id);

    void updateFamilyCount(long id);
}
