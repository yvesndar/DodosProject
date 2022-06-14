/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dodos.Model;

import java.io.Serializable;
import java.util.List;
import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;

/**
 *
 * @author OTTOX
 */
@Entity
public class Car_Category implements Serializable {
    @Id
    @GeneratedValue
    private int Category_number;
    private String Name;
    private double Cost_Per_Day;
    private double Later_fee_Per_Hour;
   
    @OneToMany(cascade = CascadeType.ALL)
    @JoinColumn(name="Category_number")
    private List<Cars> Car_Plate_Number;

    public Car_Category(int Category_number, String Name, double Cost_Per_Day, double Later_fee_Per_Hour, List Car_Plate_Number) {
        this.Category_number = Category_number;
        this.Name = Name;
        this.Cost_Per_Day = Cost_Per_Day;
        this.Later_fee_Per_Hour = Later_fee_Per_Hour;
        this.Car_Plate_Number = Car_Plate_Number;
    }

    public Car_Category() {
    }

    public List<Cars> getCar_Plate_Number() {
        return Car_Plate_Number;
    }

    public void setCar_Plate_Number(List<Cars> Car_Plate_Number) {
        this.Car_Plate_Number = Car_Plate_Number;
    }

    

    public int getCategory_number() {
        return Category_number;
    }

    public void setCategory_number(int Category_number) {
        this.Category_number = Category_number;
    }

    public String getName() {
        return Name;
    }

    public void setName(String Name) {
        this.Name = Name;
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

   
    
    
}
