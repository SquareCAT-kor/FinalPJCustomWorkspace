package top.frame;

import java.util.ArrayList;

public interface Dao<Id, Model> {

	public void insert(Model model) throws Exception;

	public void update(Model model) throws Exception;

	public void delete(Id id) throws Exception;

	public Model select(Id id);

	default public Model selectbychain(Id id) {
		return null;
	};
	
	default public ArrayList<Model> selectdailysales(){
		return null;
	};

	public ArrayList<Model> selectall();

}
