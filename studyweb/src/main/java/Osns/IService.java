package Osns;

import java.util.List;

public interface IService {
	public void write(Message m);
	
	public List<Message> getList();
	public void delete(String user, int id) throws Exception;

}
