/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dodos.Dao;

import Dodos.Model.Car_Category;
import Dodos.Model.Cars_to_Rental;
import Dodos.Model.Rental_Client;
import java.util.ArrayList;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.hibernate.service.ServiceRegistry;
import org.hibernate.service.ServiceRegistryBuilder;

/**
 *
 * @author OTTOX
 */
public class Client_Dao {
    
   
        public void saveClient(Rental_Client client){
             Configuration conf = new Configuration().configure().addAnnotatedClass(Rental_Client.class).addAnnotatedClass(Cars_to_Rental.class);
        ServiceRegistry reg = new ServiceRegistryBuilder().applySettings(conf.getProperties()).build();
        SessionFactory cb = conf.buildSessionFactory(reg);
        Session ss = cb.openSession();
        org.hibernate.Transaction tx = ss.beginTransaction();
        ss.save(client);
        tx.commit();
        ss.close();
        }
        public List<Rental_Client> ViewClient(){
         Configuration conf = new Configuration().configure().addAnnotatedClass(Rental_Client.class);
        ServiceRegistry reg = new ServiceRegistryBuilder().applySettings(conf.getProperties()).build();
        SessionFactory cb = conf.buildSessionFactory(reg);
        Session ss = cb.openSession();
        org.hibernate.Transaction tx = ss.beginTransaction();
        Query q = ss.createQuery("from Rental_Client");
        return q.list();
    } 
        
        
        
        
         public static void main(String[] args) {
         Rental_Client pt=new Rental_Client();
          
         Cars_to_Rental t=new Cars_to_Rental();
         t.setCar_Brand("Toyota");
         
         t.setCar_Capacity("6");
        
         t.setCar_Plate_Number("RAC100Y");
         t.setCar_Color("Black");
        
         //t.setCategory_number();
          List<Cars_to_Rental> cars = new ArrayList<Cars_to_Rental>();
         cars.add(t);
         pt.setClient_ID(120000153);
         pt.setClient_Name("Tuyishime sosthen");
         pt.setClient_Contact("+250780444609");
         pt.setClient_Email("sosthenty@gmail.com");
         pt.setClient_Address("Kigali");
         pt.setCar_ID(cars);
        Client_Dao d=new Client_Dao();
         d.saveClient(pt);
    }
}
