/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dodos.Model;

import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.Id;

/**
 *
 * @author OTTOX
 */
@Entity
public class Cars implements Serializable {
          @Id
    private String Car_ID;
     private String Car_Names;
      private String Car_Model_Year;
       private String Car_Brand;
        private String Car_Color;
        private String Car_Capacity;
     
        private String Car_Plate_Number;
        private String Car_Rate;   
        private double Cost_Per_Day;
    private double Later_fee_Per_Hour;
       private String Status;

    public Cars(String Car_ID, String Car_Names, String Car_Model_Year, String Car_Brand, String Car_Color, String Car_Capacity, String Car_Plate_Number, String Car_Rate, double Cost_Per_Day, double Later_fee_Per_Hour, String Status) {
        this.Car_ID = Car_ID;
        this.Car_Names = Car_Names;
        this.Car_Model_Year = Car_Model_Year;
        this.Car_Brand = Car_Brand;
        this.Car_Color = Car_Color;
        this.Car_Capacity = Car_Capacity;
        this.Car_Plate_Number = Car_Plate_Number;
        this.Car_Rate = Car_Rate;
        this.Cost_Per_Day = Cost_Per_Day;
        this.Later_fee_Per_Hour = Later_fee_Per_Hour;
        this.Status = Status;
    }
 public Cars() {
    }

    public double getCost_Per_Day() {
        return Cost_Per_Day;
    }

    public void setCost_Per_Day(double Cost_Per_Day) {
        this.Cost_Per_Day = Cost_Per_Day;
    }

    public double getLater_fee_Per_Hour() {
        return Later_fee_Per_Hour;
    }

    public void setLater_fee_Per_Hour(double Later_fee_Per_Hour) {
        this.Later_fee_Per_Hour = Later_fee_Per_Hour;
    }

    public String getStatus() {
        return Status;
    }

    public void setStatus(String Status) {
        this.Status = Status;
    }

 
 
    public String getCar_ID() {
        return Car_ID;
    }

    public void setCar_ID(String Car_ID) {
        this.Car_ID = Car_ID;
    }

    public String getCar_Names() {
        return Car_Names;
    }

    public void setCar_Names(String Car_Names) {
        this.Car_Names = Car_Names;
    }

    public String getCar_Model_Year() {
        return Car_Model_Year;
    }

    public void setCar_Model_Year(String Car_Model_Year) {
        this.Car_Model_Year = Car_Model_Year;
    }

    public String getCar_Brand() {
        return Car_Brand;
    }

    public void setCar_Brand(String Car_Brand) {
        this.Car_Brand = Car_Brand;
    }

    public String getCar_Color() {
        return Car_Color;
    }

    public void setCar_Color(String Car_Color) {
        this.Car_Color = Car_Color;
    }

    public String getCar_Capacity() {
        return Car_Capacity;
    }

    public void setCar_Capacity(String Car_Capacity) {
        this.Car_Capacity = Car_Capacity;
    }

    public String getCar_Plate_Number() {
        return Car_Plate_Number;
    }

    public void setCar_Plate_Number(String Car_Plate_Number) {
        this.Car_Plate_Number = Car_Plate_Number;
    }

    public String getCar_Rate() {
        return Car_Rate;
    }

    public void setCar_Rate(String Car_Rate) {
        this.Car_Rate = Car_Rate;
    }

        
        
        
}
