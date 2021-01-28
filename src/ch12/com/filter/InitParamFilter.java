package ch12.com.filter;

import java.io.IOException;

import java.io.PrintWriter;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class InitParamFilter implements Filter {
	private FilterConfig filterConfig = null;
	
	@Override
	public void init(FilterConfig filterConfig) throws ServletException{
		System.out.println("Filer02 초기화 ...");
		this.filterConfig = filterConfig;
	}
	
	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain filterChain) throws IOException, ServletException{
		System.out.println("Filter02.jsp 수행...");
	
		String id = request.getParameter("id");
		String passwd = request.getParameter("passwd");
		
//		web.xml 파일의 filter 부분의 init-param의 param-name과 연동함
		String param1 = filterConfig.getInitParameter("param1");
		String param2 = filterConfig.getInitParameter("param2");
		
		String message;
		
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charseet=utf-8");
		PrintWriter writer = response.getWriter();
		
//		web.xml의 inti-param의 param-name 과 연동한 데이터를 request 내장 객체에서 꺼낸 데이터와 같은지 비교
		if(id.equals(param1)&& passwd.equals(param2))
			message = "로그인 성공했습니다.";
		else
			message = "로그인 실패했습니다.";
		
		writer.println(message);
		
		filterChain.doFilter(request, response);
	}
	
	@Override
	
	public void destroy() {
		System.out.println("Filter02 해제 ...");
	}
}
