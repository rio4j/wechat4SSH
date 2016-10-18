package org.rio4j.ssh.service;

import org.rio4j.ssh.model.vo.DataGrid;
import org.rio4j.ssh.model.vo.Doc;

public interface DocServiceI {

	public void save(Doc doc);

	public void update(Doc doc);

	public void delete(String ids);

	public DataGrid datagrid(Doc doc);
	
	public void upload(Doc doc, String fileName);

}
