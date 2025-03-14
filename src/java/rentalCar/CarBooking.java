package rentalCar;

import java.sql.Timestamp;
import java.sql.Date;

public class CarBooking {
    private int bookingId;
    private int userId;
    private int carId;
    private Timestamp bookingDate;
    private Date startDate;
    private Date endDate;
    private double totalAmount;
    private String status;
    private String paymentStatus;
    private String remarks;
    
    // Car details
    private String carType;
    private String description;
    private String carImage;
    private double rentalPrice;
    
    // Getters and Setters
    public int getBookingId() { return bookingId; }
    public void setBookingId(int bookingId) { this.bookingId = bookingId; }
    
    public int getUserId() { return userId; }
    public void setUserId(int userId) { this.userId = userId; }
    
    public int getCarId() { return carId; }
    public void setCarId(int carId) { this.carId = carId; }
    
    public Timestamp getBookingDate() { return bookingDate; }
    public void setBookingDate(Timestamp bookingDate) { this.bookingDate = bookingDate; }
    
    public Date getStartDate() { return startDate; }
    public void setStartDate(Date startDate) { this.startDate = startDate; }
    
    public Date getEndDate() { return endDate; }
    public void setEndDate(Date endDate) { this.endDate = endDate; }
    
    public double getTotalAmount() { return totalAmount; }
    public void setTotalAmount(double totalAmount) { this.totalAmount = totalAmount; }
    
    public String getStatus() { return status; }
    public void setStatus(String status) { this.status = status; }
    
    public String getPaymentStatus() { return paymentStatus; }
    public void setPaymentStatus(String paymentStatus) { this.paymentStatus = paymentStatus; }
    
    public String getRemarks() { return remarks; }
    public void setRemarks(String remarks) { this.remarks = remarks; }
    
    public String getCarType() { return carType; }
    public void setCarType(String carType) { this.carType = carType; }
    
    public String getDescription() { return description; }
    public void setDescription(String description) { this.description = description; }
    
    public String getCarImage() { return carImage; }
    public void setCarImage(String carImage) { this.carImage = carImage; }
    
    public double getRentalPrice() { return rentalPrice; }
    public void setRentalPrice(double rentalPrice) { this.rentalPrice = rentalPrice; }
} 