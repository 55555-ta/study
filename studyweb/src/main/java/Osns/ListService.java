package Osns;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContext;

public class ListService implements IService {
	List<Message> snsdb;
	
	public ListService(ServletContext ctx) {
		// 메세지 저장을 위해 ServletContext 에서 snsdb 롤 저장된 ArrayList 가지고옴
		snsdb = (List<Message>) ctx.getAttribute("snsdb");
		
		//null 인 경우 새로운 ArrayList 객체를 생성
		if(snsdb == null) {
			snsdb = new ArrayList<Message>();
			//ServletContext 에 ArrayList저장
			ctx.setAttribute("snsdb", snsdb);
		}
	}

	@Override
	public void write(Message m) {
		snsdb.add(m);

	}

	@Override
	public List<Message> getList() {
		return snsdb;
	}

	@Override
	public void delete(String user, int id) throws Exception {
		if(user.equals(snsdb.get(id).getName())) {
			snsdb.remove(id);
		}else {
			throw new Exception("삭제 오류 발생");
		}

	}

}
