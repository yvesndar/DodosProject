/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dodos.Model;

import java.io.Serializable;
import java.util.List;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;

/**
 *
 * @author OTTOX
 */
@Entity
public class Rental_Client implements Serializable {
    @Id
    @Column(length = 16)
    private double Client_ID;
    private String Client_Name;
    private String Client_Address;
    private String Client_Contact;
    private String Client_Email;
    @OneToMany(cascade = CascadeType.ALL)
    @JoinColumn(name="Client_ID")
    private List<Cars_to_Rental> Car_ID;
public Rental_Client(double Client_ID, String Client_Name, String Client_Address, String Client_Contact, String Client_Email,List Car_ID) {
        this.Client_ID = Client_ID;
        this.Client_Name = Client_Name;
        this.Client_Address = Client_Address;
        this.Client_Contact = Client_Contact;
        this.Client_Email = Client_Email;
        this.Car_ID=Car_ID;
    }

    public Rental_Client() {
    }

    public double getClient_ID() {
        return Client_ID;
    }

    public void setClient_ID(double Client_ID) {
        this.Client_ID = Client_ID;
    }

    public String getClient_Name() {
        return Client_Name;
    }

    public void setClient_Name(String Client_Name) {
        this.Client_Name = Client_Name;
    }

    public String getClient_Address() {
        return Client_Address;
    }

    public void setClient_Address(String Client_Address) {
        this.Client_Address = Client_Address;
    }

    public String getClient_Contact() {
        return Client_Contact;
    }

    public void setClient_Contact(String Client_Contact) {
        this.Client_Contact = Client_Contact;
    }

    public String getClient_Email() {
        return Client_Email;
    }

    public void setClient_Email(String Client_Email) {
        this.Client_Email = Client_Email;
    }

    public List<Cars_to_Rental> getCar_ID() {
        return Car_ID;
    }

    public void setCar_ID(List<Cars_to_Rental> Car_ID) {
        this.Car_ID = Car_ID;
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
        final Rental_Client other = (Rental_Client) obj;
        if (Double.doubleToLongBits(this.Client_ID) != Double.doubleToLongBits(other.Client_ID)) {
            return false;
        }
        return true;
    }
    
}
