package ssm.test;


import org.apache.log4j.Logger;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.rio4j.ssh.model.vo.DataGrid;
import org.rio4j.ssh.model.vo.User;
import org.rio4j.ssh.service.UserServiceI;
import org.rio4j.ssh.wechat.Wechat;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.sword.wechat4j.common.ValidateSignature;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "classpath:spring.xml","classpath:spring-hibernate.xml" })
public class TestSpring {

	private static final Logger logger = Logger.getLogger(TestSpring.class);
	
	@Autowired
	private UserServiceI userService;
	
	@Test
	public void test1() {
		User user = new User();
		DataGrid datagrid = userService.datagrid(user);
		System.out.println(datagrid.getTotal());
	}
	@Test
	public void test2(){
		
		ValidateSignature validateSignature = new ValidateSignature("",
				"", "", "chobits");
		validateSignature.check();
	}
}
