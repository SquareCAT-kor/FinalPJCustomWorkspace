package top.frame;

import java.util.ArrayList;

import top.model.User;

public interface Dao<Id, Model> {

	
	public Model select(Id id);
	
	public ArrayList<Model> selectall();

	public Model insert(User v) throws Exception;
	
	
}
