package Model.Manager;

import database.DBWorker;

/**
 * Created by Δενθρ on 12.09.2015.
 */
public abstract class TripManager {
    static public void add(int routeId, java.sql.Date fromDate, java.sql.Date toDate, int busId) {
        //String query = "INSERT INTO buses (name, seats) VALUES ('" + bus.getName() + "', " + bus.getSeats() + ")";
        String query = "INSERT INTO trips (route, departure, arrival, bus) VALUES ("+ routeId +","+ fromDate.toString() +", "+ fromDate.toString() +", "+ busId + ")";
        //String query = "SELECT name FROM buses WHERE id = 1";
        DBWorker dbWorker = new DBWorker();
        dbWorker.execute(query);
        dbWorker.closeConnection();
    }
    static public void edit() {}
    static public void delete() {}
}
