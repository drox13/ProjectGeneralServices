package edu.uptc.controller;

import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import edu.uptc.model.Employee;

public class AddEmployeeController implements Controller{
	protected final Log logger = LogFactory.getLog(getClass());
	private ArrayList<Employee> employeeList = new ArrayList<Employee>();    

	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		int id = Integer.valueOf(request.getParameter("emp_id"));
		String name = request.getParameter("emp_name");
		String email = request.getParameter("emp_email");
		long phone = Long.valueOf(request.getParameter("emp_phone"));
		Employee emp = new Employee();
		emp.setEmp_id(id);
		emp.setEmp_name(name);
		emp.setEmail_emp(email);
		emp.setPhone_emp(phone);
		employeeList.add(emp);
		request.getSession().setAttribute("oper", "success");
		PrintWriter out;
		out = response.getWriter();
		response.setContentType("text/html");
		out.println("<html>");
		out.println("<head><style>\"/css/empStyle.css\"></style> <title>Respuesta adicionar empleado</title></head>");
		out.println("<body>");
		out.println("<h1>Employee App</h1>");
		out.println("<h2>Empleado adicionado exitosamente!</h2>");
		out.println("<a href=\"index.jsp\">Volver a la pagina inicial</a>");
		out.println("</body>");
		out.println("</html>");
		logger.info("ingresa a la vista AddEmployee"); 
		return null;
	}

}
