package com.Servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.user.Student;

/**
 * Servlet implementation class SchedulerServlet
 */
@WebServlet("/SchedulerServlet")
public class SchedulerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SchedulerServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.getParameter("courses");
		Course myCourse = new Course();
		String[] weekdays = request.getParameterValues("weekday");
		WeekDay[] myDays = new WeekDay[weekdays.length];
		
		for(int i=0; i<weekdays.length; i++) {
			switch (weekdays[i]) {
			case "MONDAY":
				myDays[i] = WeekDay.MONDAY;
				break;
			case "TUESDAY":
				myDays[i] = WeekDay.TUESDAY;
				break;
			case "WEDNESDAY":
				myDays[i] = WeekDay.WEDNESDAY;
				break;					
			case "THURSDAY":
				myDays[i] = WeekDay.THURSDAY;
				break;
			case "FRIDAY":
				myDays[i] = WeekDay.FRIDAY;
				break;				
			}
		}
		HttpSession session = request.getSession(true);
		ArrayList<Course> courses = (ArrayList)session.getAttribute("course");
		if(courses==null) {
			courses = new ArrayList<Course>();
		}
		
		myCourse.setOccurrences(myDays);
		myCourse.setProfessor(request.getParameter("profName"));
		myCourse.setCourseName(request.getParameter("courseName"));
		myCourse.setRoomNumber(request.getParameter("roomNumber"));
		myCourse.setStartDate(request.getParameter("startDate"));
		myCourse.setTime(request.getParameter("time"));
		courses.add(myCourse);

		session.setAttribute("course", courses);
		RequestDispatcher rs = request.getRequestDispatcher("courselist.jsp");
		rs.forward(request, response);
		
	}
		

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
