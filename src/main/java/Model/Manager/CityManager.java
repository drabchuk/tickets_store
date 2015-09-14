package Model.Manager;

import database.DBWorker;

/**
 * Created by Δενθρ on 14.09.2015.
 */
public abstract class CityManager {
    static public void add(String name) {
        //String query = "INSERT INTO buses (name, seats) VALUES ('" + bus.getName() + "', " + bus.getSeats() + ")";
        String query = "INSERT INTO cities (name) VALUES ('"+ name +"')";
        //String query = "SELECT name FROM buses WHERE id = 1";
        DBWorker dbWorker = new DBWorker();
        dbWorker.execute(query);
        dbWorker.closeConnection();
    }
    static public void edit() {}
    static public void delete() {}
}
