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
    private String Car_ID;
     private String Car_Names;
      private String Car_Model_Year;
       private String Car_Brand;
        private String Car_Color;
        private String Car_Capacity;
            @Id
        private String Car_Plate_Number;
        private String Car_Rate;   

}
