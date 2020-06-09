package keti.main.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import keti.main.model.Bce_Battery;
import keti.main.model.Bce_Cool;
import keti.main.model.Bce_Oil;

@Repository
public class BceDAO {
	@Autowired private SqlSession sqlSession;
	private static final String Namespace = "keti.main.mapper.bceMapper";
	
	public List<Bce_Battery> getBattery() {
			return sqlSession.selectList(Namespace+".getBattery");
	}

	public List<Bce_Cool> getCool() {
		return sqlSession.selectList(Namespace+".getCool");
	}

	public List<Bce_Oil> getOil() {
		return sqlSession.selectList(Namespace+".getOil");
	}
}