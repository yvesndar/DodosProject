/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dodos.Dao;

import Dodos.Model.Car_Category;
import Dodos.Model.Cars_to_Rental;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.hibernate.service.ServiceRegistry;
import org.hibernate.service.ServiceRegistryBuilder;

/**
 *
 * @author OTTOX
 */
public class Car_Dao {
    
        public void SaveCar(Cars_to_Rental car){
            Configuration conf = new Configuration().configure().addAnnotatedClass(Cars_to_Rental.class).addAnnotatedClass(Car_Category.class);
    
        ServiceRegistry reg = new ServiceRegistryBuilder().applySettings(conf.getProperties()).build();
        SessionFactory cb = conf.buildSessionFactory(reg);
        Session ss = cb.openSession();
        org.hibernate.Transaction tx = ss.beginTransaction();
        ss.save(car);
        tx.commit();
        ss.close();
        }
        
        
        public static void main(String[] args) {
     
         Cars_to_Rental t=new Cars_to_Rental();
         t.setCar_Brand("Toyota");
         t.setCar_ID("123445");
         t.setCar_Capacity("4");
         t.setCar_Model_Year("2015");
         t.setCar_Plate_Number("RAC 142T");
         t.setCar_Color("WHITE");
         t.setCar_Rate("15");
         //t.setCategory_number(c);
         Car_Dao g=new Car_Dao();
         g.SaveCar(t);
        }
}
