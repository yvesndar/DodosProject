/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dodos.Dao;

import Dodos.Model.Car_Category;
import Dodos.Model.Cars;
import Dodos.Model.Cars_to_Rental;
import Dodos.Model.Rental_Client;
import java.util.ArrayList;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.hibernate.service.ServiceRegistry;
import org.hibernate.service.ServiceRegistryBuilder;

/**
 *
 * @author OTTOX
 */
public class Category_Dao {
    
        public void saveCategory(Car_Category Category){
             Configuration conf = new Configuration().configure().addAnnotatedClass(Car_Category.class).addAnnotatedClass(Cars.class);
        ServiceRegistry reg = new ServiceRegistryBuilder().applySettings(conf.getProperties()).build();
        SessionFactory cb = conf.buildSessionFactory(reg);
        Session ss = cb.openSession();
        org.hibernate.Transaction tx = ss.beginTransaction();
        ss.save(Category);
        tx.commit();
        ss.close();
        }
        public static void main(String[] args) {
            Cars t=new Cars();
        t.setCar_Brand("Toyota");
         t.setCar_ID("123445");
         t.setCar_Capacity("4");
         t.setCar_Model_Year("2015");
         t.setCar_Plate_Number("RAC242Y");
         t.setCar_Color("WHITE");
         t.setCar_Rate("15");
             List<Cars> car = new ArrayList<>();
         car.add(t);
         Car_Category ct=new Car_Category();
         ct.setCategory_number(1);
         ct.setCost_Per_Day(35000);
         ct.setLater_fee_Per_Hour(1000);
         ct.setName("Category1");
         ct.setCar_Plate_Number(car);
         Category_Dao d=new Category_Dao();
         d.saveCategory(ct);
    }
}
