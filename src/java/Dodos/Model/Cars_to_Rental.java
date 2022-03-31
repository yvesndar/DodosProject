/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dodos.Model;

import java.io.Serializable;
import java.util.Objects;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

/**
 *
 * @author OTTOX
 */
@Entity

public class Cars_to_Rental implements Serializable {

    @GeneratedValue()
    private String Car_ID;
     private String Car_Names;
      private String Car_Model_Year;
       private String Car_Brand;
        private String Car_Color;
        private String Car_Capacity;
            @Id
        private String Car_Plate_Number;
        private String Car_Rate;   

    public Cars_to_Rental(String Car_ID, String Car_Names, String Car_Model_Year, String Car_Brand, String Car_Color, String Car_Capacity, String Car_Plate_Number, String Car_Rate) {
        this.Car_ID = Car_ID;
        this.Car_Names = Car_Names;
        this.Car_Model_Year = Car_Model_Year;
        this.Car_Brand = Car_Brand;
        this.Car_Color = Car_Color;
        this.Car_Capacity = Car_Capacity;
        this.Car_Plate_Number = Car_Plate_Number;
        this.Car_Rate = Car_Rate;
    }

    public Cars_to_Rental() {
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

  

    @Override
    public int hashCode() {
        int hash = 5;
        return hash;
    }

    @Override
    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (getClass() != obj.getClass()) {
            return false;
        }
        final Cars_to_Rental other = (Cars_to_Rental) obj;
        if (!Objects.equals(this.Car_ID, other.Car_ID)) {
            return false;
        }
        return true;
    }
        
            
    
    
}
