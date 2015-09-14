package servlets;

import Model.Entity.Seat;
import Model.Entity.Trip;
import Model.Entity.TripViewer;
import Model.Observer.BusConfigObserver;
import Model.Observer.SeatObserver;
import Model.Observer.SeatPlace;
import Model.Observer.TripObserver;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

/**
 * Created by ????? on 14.09.2015.
 */
@WebServlet("/step2")
public class Step2 extends HttpServlet {

    private ServletContext context;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Integer id = new Integer(request.getParameter("id"));
        ArrayList<Seat> seats = new ArrayList<Seat>();
        ArrayList<SeatPlace> seatPlaces = BusConfigObserver.busConfig(id);
        request.setAttribute("seats", seats);
        request.setAttribute("seatConfig", seatPlaces);
        RequestDispatcher dispatcher = request.getRequestDispatcher("/home.jsp");
        dispatcher.forward(request, response);
    }
}
