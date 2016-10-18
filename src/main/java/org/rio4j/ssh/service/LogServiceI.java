package org.rio4j.ssh.service;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.ProceedingJoinPoint;
import org.rio4j.ssh.model.vo.DataGrid;
import org.rio4j.ssh.model.vo.Log;
import org.rio4j.ssh.model.vo.User;

public interface LogServiceI {

	public void beforeLog(JoinPoint point);

	public void afterLog(JoinPoint point);

	public Object aroundLog(ProceedingJoinPoint point);
	
	public DataGrid datagrid(Log log);

}
