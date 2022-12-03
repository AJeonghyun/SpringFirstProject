package com.example;

import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

public class BoardServiceImpl implements BoardService{
    @Autowired
    BoardDAO boardDAO;

    @Override
    public int insertBoard(BoardVO vo) {
        return boardDAO.insertBoard(vo);
    }

    @Override
    public int deleteBoard(int seq) {
        return boardDAO.deleteBoard(seq);
    }

    public int updateBoard(BoardVO vo) {
        return boardDAO.updateBoard(vo);
    }

    public BoardVO getBoard(int seq) {
        return boardDAO.getBoard(seq);
    }

    public List<BoardVO> getBoardList() {
        return boardDAO.getBoardList();
    }
}
