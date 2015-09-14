package Model.Observer;

import Model.Entity.City;
import Model.Entity.Seat;
import database.DBWorker;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 * Created by Δενθρ on 14.09.2015.
 */
public abstract class BusConfigObserver {
    public static ArrayList<SeatPlace> busConfig(int tripId) {
        ArrayList<SeatPlace> res = new ArrayList<SeatPlace>();
        ResultSet resultSet = null;
        String query = "SELECT seat FROM bus_config WHERE trip = " + tripId;
        DBWorker dbWorker = new DBWorker();
        resultSet = dbWorker.executeQuery(query);
        try {
            while (resultSet.next()) {
                res.add(new SeatPlace(resultSet.getInt("seat"), resultSet.getInt("row"), resultSet.getInt("place")));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return res;
    }
}
