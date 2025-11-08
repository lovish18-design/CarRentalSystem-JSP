// Path: src/com/carrental/model/Rental.java

package com.carrental.model;

public class Rental {
    private String carId;
    private String customerName;
    private int rentDays;
    private double totalRent;

    // Getters and Setters
    public String getCarId() { return carId; }
    public void setCarId(String carId) { this.carId = carId; }
    public String getCustomerName() { return customerName; }
    public void setCustomerName(String customerName) { this.customerName = customerName; }
    public int getRentDays() { return rentDays; }
    public void setRentDays(int rentDays) { this.rentDays = rentDays; }
    public double getTotalRent() { return totalRent; }
    public void setTotalRent(double totalRent) { this.totalRent = totalRent; }
}