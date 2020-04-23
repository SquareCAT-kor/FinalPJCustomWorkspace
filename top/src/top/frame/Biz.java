package top.frame;

import java.util.ArrayList;

import org.springframework.transaction.annotation.Transactional;

public interface Biz<Id, Model> {

	@Transactional
	public void register(Model model) throws Exception;

	@Transactional
	public void modify(Model model) throws Exception;

	@Transactional
	public void remove(Id id) throws Exception;

	public Model get(Id id);

	default public Model getbychain(Id id) {
		return null;
	}

	public ArrayList<Model> get();

}
