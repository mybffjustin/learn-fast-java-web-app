package org.justinhoang.controller;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.justinhoang.entity.Course;
import org.justinhoang.persistence.GenericDao;
import org.justinhoang.util.DaoFactory;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ReadCourses", urlPatterns = {"/readCourses"})

public class ReadCourses extends HttpServlet
{

    private final Logger logger = LogManager.getLogger(this.getClass());

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws
                                                                           ServletException,
                                                                           IOException
    {
        GenericDao<Course> course     = DaoFactory.createDao(Course.class);
        List<Course>       courses = course.readAll();
        req.setAttribute("courses", courses);
        logger.debug("Courses: " + courses);

        RequestDispatcher dispatcher =
                req.getRequestDispatcher("/readCourses" + ".jsp");
        dispatcher.forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws
                                                                            ServletException,
                                                                            IOException
    {
        doGet(req, resp);
    }
}
