package com.signal.board.repository;

import java.sql.Date;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;


import com.signal.board.model.BoardVO;


@Repository
public class BoardRepository implements IBoardRepository {

	@Autowired
	JdbcTemplate jdbcTemplate;
	private class BoardMapper implements RowMapper<BoardVO> {
		
		
		@Override
		public BoardVO mapRow(ResultSet rs, int count) 
				throws SQLException {
			BoardVO board = new BoardVO();
			board.setBoardId(rs.getInt("id"));
			board.setBoardSubject(rs.getString("subject"));
			board.setBoardContent(rs.getString("content"));
			board.setBoardWriter(rs.getString("writer"));
			board.setBoardDate(rs.getDate("datetime"));
			board.setBoardCountry(rs.getString("country"));			
			board.setBoardJob(rs.getString("job"));

			return board;
		}			
	} //�� ��Ͽ� �°�
	

	
	@Override
	public List<BoardVO> getListBoard() {
		String sql = "select * from board";
		return jdbcTemplate.query(sql, new RowMapper<BoardVO>() {
			@Override
			public BoardVO mapRow(ResultSet rs, int count) 
					throws SQLException {
				BoardVO board = new BoardVO();
				board.setBoardId(rs.getInt("id"));
				board.setBoardSubject(rs.getString("subject"));
				board.setBoardContent(rs.getString("content"));
				board.setBoardWriter(rs.getString("writer"));
				board.setBoardDate(rs.getDate("datetime"));
				board.setBoardCountry(rs.getString("country"));			
				board.setBoardJob(rs.getString("job"));
				return board;
			}
		});
	}

	@Override
	public BoardVO getBoardInfo(int boardid) {
		String sql = "select id, subject, content, "
				+ "writer, datetime, country, job "
				+ "from board where id=?";
		System.out.println(jdbcTemplate.queryForObject(sql, new BoardMapper(), boardid).getBoardId());

		return jdbcTemplate.queryForObject(sql, new BoardMapper(), boardid);
	}
	
	
	
	
	
	
	
	@Override
	public void updateBoard(BoardVO board) {
		String sql = "update board "
				+ "set subject=?, content=?, writer=?, "
				+ "datetime=SYSDATE, country=?, job=? "
				+  "where id=?";
		jdbcTemplate.update(sql, 
				board.getBoardSubject(),
				board.getBoardContent(),
				board.getBoardWriter(),

				board.getBoardCountry(),
				board.getBoardJob(),
				board.getBoardId()

		);
	}

	
	
	@Override
	public void insertBoard(BoardVO board) {
		String sql = "insert into board (id, subject, "
				+ "content, writer, datetime, country, job) "
				+ "values (?,?,?,?,sysdate,?,?)";
		jdbcTemplate.update(sql, 
				board.getBoardId(), 
				board.getBoardSubject(), 
				board.getBoardContent(),
				board.getBoardWriter(),
				//board.getBoardDate(),
				board.getBoardCountry(),
				board.getBoardJob()
		);
	}





	@Override
	public void deleteBoard(int boardid, String writer) {
		//System.out.println("res 들어오기 성공" + boardid);
		String sql = "delete from board where id=? and writer=?";
		jdbcTemplate.update(sql, boardid, writer);
	}
	
	/*	@Override
	public List<Map<String, Object>> getAllCountryId() {
		String sql = "select department_id as departmentId, "
					+"		department_name as departmentName "
					+"	from departments";
		return jdbcTemplate.queryForList(sql);
	}
	
	@Override
	public List<Map<String, Object>> getAllJobId() {
		String sql = "select job_id as jobId, job_title as title from jobs";
		return jdbcTemplate.queryForList(sql);
	}

		@Override
	public List<Map<String, Object>> getAllManagerId() {
		String sql = "select "
					+ "	d.manager_id as managerId, e.first_name as firstName "
					+ "from departments d join employees e "
					+ " on d.manager_id = e.employee_id "
					+ "order by d.manager_id";
		return jdbcTemplate.queryForList(sql);
	}
*/	
	
	
	
	
	
	
	
/*	@Override
	public int getCountBoard() {
		String sql = "select count(*) from employees";
		return jdbcTemplate.queryForObject(sql, Integer.class);
	}

	@Override
	public int getCountBoard(int deptid) {
		String sql = "select count(*) from employees where department_id=?";
		return jdbcTemplate.queryForObject(sql, Integer.class, deptid);
	}

*/	
}
