package org.rio4j.ssh.service;

import org.rio4j.ssh.model.vo.DataGrid;
import org.rio4j.ssh.model.vo.Online;

public interface OnlineServiceI {

	public void saveOrUpdateTonlineByLoginNameAndIp(String loginName, String ip);

	public void deleteTonlineByLoginNameAndIp(String loginName, String ip);

	public DataGrid datagrid(Online online);

}
