package Model.Entity;

import database.DBWorker;

import java.util.ArrayList;

/**
 * Created by Δενθρ on 12.09.2015.
 */
public class City {
    String name;

    public City(String name) {
        this.name = name;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int selectId() {
        DBWorker dbWorker = new DBWorker();
        int res = dbWorker.selectIntByString("cities", "Id", "name", name);
        dbWorker.closeConnection();
        return res;
    }

    private String createQueryToSelectId() {
        return "SELECT Id FROM cities WHERE name = '" + name + "'";
    }

    public ArrayList<Station> selectAllStationsInThisCity() {
        ArrayList<Station> stations = new ArrayList<Station>();
        String query = "SELECT * FROM stations WHERE city = (" + createQueryToSelectId() + " )";
        return stations;
    }

    @Override
    public String toString() {
        return name;
    }
}
