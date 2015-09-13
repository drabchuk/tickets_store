package Model.Entity;

/**
 * Created by Δενθρ on 12.09.2015.
 */
public class Seat {
    private Trip trip;
    private int seat_num;
    private double price;
    private int availability;

    public Seat(Trip trip, int seat_num, double price, int availability) {
        this.trip = trip;
        this.seat_num = seat_num;
        this.price = price;
        this.availability = availability;
    }

    public Trip getTrip() {
        return trip;
    }

    public void setTrip(Trip trip) {
        this.trip = trip;
    }

    public int getSeat_num() {
        return seat_num;
    }

    public void setSeat_num(int seat_num) {
        this.seat_num = seat_num;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public int getAvailability() {
        return availability;
    }

    public void setAvailability(int availability) {
        this.availability = availability;
    }
}
