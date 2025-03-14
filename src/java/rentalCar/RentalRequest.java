/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package rentalCar;

/**
 *
 * @author amolwankhede
 */
public class RentalRequest {

    int requestId;
    String dateRequested;
    String dateFrom;
    String dateTo;
    String status;
    int userId;
    String regNo;
    String carType;
    String description;
    String carImage;
    double rentalPrice;

    public RentalRequest() {
    }

    public int getRequestId() {
        return requestId;
    }

    public void setRequestId(int requestId) {
        this.requestId = requestId;
    }

    public String getDateRequested() {
        return dateRequested;
    }

    public void setDateRequested(String dateRequested) {
        this.dateRequested = dateRequested;
    }

    public String getDateFrom() {
        return dateFrom;
    }

    public void setDateFrom(String dateFrom) {
        this.dateFrom = dateFrom;
    }

    public String getDateTo() {
        return dateTo;
    }

    public void setDateTo(String dateTo) {
        this.dateTo = dateTo;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
    
    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getRegNo() {
        return regNo;
    }

    public void setRegNo(String regNo) {
        this.regNo = regNo;
    }
    public String getCarType() { return carType; }
    public void setCarType(String carType) { this.carType = carType; }
    
    public String getDescription() { return description; }
    public void setDescription(String description) { this.description = description; }
    
    public String getCarImage() { return carImage; }
    public void setCarImage(String carImage) { this.carImage = carImage; }
    
    public double getRentalPrice() { return rentalPrice; }
    public void setRentalPrice(double rentalPrice) { this.rentalPrice = rentalPrice; }

}
