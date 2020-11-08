package com.signal.board.repository;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;
import com.signal.board.model.MemberVO;



@Repository
public class MemberRepository implements IMemberRepository{
	
	@Autowired
	JdbcTemplate jdbcTemplate;
	
	private class MemberMapper implements RowMapper<MemberVO> {
		
		@Override
		public MemberVO mapRow(ResultSet rs, int count) throws SQLException {
			MemberVO member = new MemberVO();
			
			member.setMemberId(rs.getString("userId"));
			member.setMemberEmail(rs.getString("userEmail"));
			member.setMemberPwd(rs.getString("userPwd"));
			member.setMemberRePwd(rs.getString("userRePwd"));
			
			return member;
		}
	}
				
		@Override
		public void insertMember(MemberVO member) {
			String sql = "insert into member (member_id, member_pw, "
					+ "member_email, member_name) "
					+ "values (?,?,?,?)";
			
			jdbcTemplate.update(sql, 
					member.getMemberId(), 
					member.getMemberEmail(),
					member.getMemberPwd(), 
					member.getMemberRePwd()
					);
		}
		

//
//	@Override
//	public MemberVO getBoardMemberInfo(String boardmemberid) {
//		System.out.println("레파짓 오픈");
//		System.out.println(boardmemberid);
//		String sql = "select member_id, member_pw, member_email, "
//				+ "member_name "
//				+ "from member where member_id=?";
//		System.out.println(jdbcTemplate.queryForObject(sql, new BoardMemberMapper(), boardmemberid).getMemberId());
//		
//	//	String lastName = this.jdbcTemplate.queryForObject("select last_name from t_actor where id = ?", new Object[]{1212L}, String.class);
//	
//		return jdbcTemplate.queryForObject(sql, new BoardMemberMapper(), boardmemberid);
//	}

}
