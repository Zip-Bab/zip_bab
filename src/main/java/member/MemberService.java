package member;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import sqlsession.Factory;


public class MemberService {
	
	private SqlSessionFactory sqlSessionFactory;
	
	public MemberService() {
		sqlSessionFactory = Factory.getSqlSessionFactory();
	}
	
	public void addMember(Member m){
		//커넥션 수립
		SqlSession session = sqlSessionFactory.openSession();//session open
		//dao interface 구현체를 받아옴
		//dao는 기존의 dao객체와 같다
		MemberDao dao = (MemberDao) session.getMapper(MemberDao.class);//session을 통해 맵퍼 객체 획득
		//dao 메서드를 호출하여 db작업 수행
		dao.addMember(m);
		//트랜잭션 커밋(쓰기작업에 필요)
		session.commit();
		//커넥션 닫음
		session.close();
	}
	
	public Member getMember(String loginId){
		SqlSession session = sqlSessionFactory.openSession();
		MemberDao dao = (MemberDao) session.getMapper(MemberDao.class);
		Member m = dao.getMember(loginId);
		session.close();
		return m;
	}
	public Member getMemberByMemberId(int memberId){
		SqlSession session = sqlSessionFactory.openSession();
		MemberDao dao = (MemberDao) session.getMapper(MemberDao.class);
		Member m = dao.getMemberByMemberId(memberId);
		session.close();
		return m;
	}
	public void editMember(Member m){
		SqlSession session = sqlSessionFactory.openSession();
		MemberDao dao = (MemberDao) session.getMapper(MemberDao.class);
		dao.editMember(m.getLoginId(), m.getNickname(), m.getProfile());
		session.commit();
		session.close();
	}

	public void editMember2(Member m){
		SqlSession session = sqlSessionFactory.openSession();
		MemberDao dao = (MemberDao) session.getMapper(MemberDao.class);
		dao.editMember2(m.getLoginId(), m.getNickname());
		session.commit();
		session.close();
	}

	public void delMember(String loginId){
		SqlSession session = sqlSessionFactory.openSession();
		MemberDao dao = (MemberDao) session.getMapper(MemberDao.class);
		dao.delMember(loginId);
		session.commit();
		session.close();
	}
	
	public ArrayList<Member> getAll(){
		SqlSession session = sqlSessionFactory.openSession();
		MemberDao dao = (MemberDao) session.getMapper(MemberDao.class);
		ArrayList<Member> m = dao.selectAll();
		session.close();
		return m;
	}
	
}
