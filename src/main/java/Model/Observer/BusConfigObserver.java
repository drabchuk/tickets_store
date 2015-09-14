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
public class BusConfigObserver {
    private ArrayList<SeatPlace> busConfig(int tripId) {
        ArrayList<SeatPlace> res = new ArrayList<SeatPlace>();
        ResultSet resultSet = null;
        String query = "SELECT seat FROM bus_config WHERE trip = " + tripId;
        DBWorker dbWorker = new DBWorker();
        resultSet = dbWorker.executeQuery(query);
        try {
            while (resultSet.next()) {
                cities.add(new City(resultSet.getString("name")).getName());
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return cities;
    }
}

class SeatPlace {
    int seat_num;
    int row;
    int place;

    public SeatPlace(int seat_num, int row, int place) {
        this.seat_num = seat_num;
        this.row = row;
        this.place = place;
    }
}
