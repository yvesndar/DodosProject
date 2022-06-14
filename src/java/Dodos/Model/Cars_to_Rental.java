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

       private String Car_Brand;
        private String Car_Color;
        private String Car_Capacity;
            @Id
        private String Car_Plate_Number;
        
        private int days;

    public Cars_to_Rental(String Car_Brand, String Car_Color, String Car_Capacity, String Car_Plate_Number, int days) {
       this.Car_Brand = Car_Brand;
        this.Car_Color = Car_Color;
        this.Car_Capacity = Car_Capacity;
        this.Car_Plate_Number = Car_Plate_Number;
      
        this.days=days;
    }

    public Cars_to_Rental() {
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

    @Override
    public int hashCode() {
        int hash = 7;
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
        return Objects.equals(this.Car_Plate_Number, other.Car_Plate_Number);
    }

    

  

    

    public int getDays() {
        return days;
    }

    public void setDays(int days) {
        this.days = days;
    }
        
            
    
    
}
