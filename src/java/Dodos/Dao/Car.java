/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dodos.Dao;

import Dodos.Model.Cars;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.hibernate.service.ServiceRegistry;
import org.hibernate.service.ServiceRegistryBuilder;

/**
 *
 * @author OTTOX
 */
public class Car {
    
        public void SaveCar(Cars car){
            Configuration conf = new Configuration().configure().addAnnotatedClass(Cars.class);
    
        ServiceRegistry reg = new ServiceRegistryBuilder().applySettings(conf.getProperties()).build();
        SessionFactory cb = conf.buildSessionFactory(reg);
        Session ss = cb.openSession();
        org.hibernate.Transaction tx = ss.beginTransaction();
        ss.save(car);
        tx.commit();
        ss.close();
        }
        
        
        public static void main(String[] args) {
     
         Cars t=new Cars();
         t.setCar_Brand("Toyota");
         t.setCar_ID("123745");
         t.setCar_Capacity("4");
         t.setCar_Model_Year("2015");
         t.setCar_Plate_Number("RAC100Y");
         t.setCar_Color("WHITE");
         t.setCar_Rate("15");
         t.setCost_Per_Day(30000);
         t.setStatus("parking");
         Car g=new Car();
         g.SaveCar(t);
        }
        
}
