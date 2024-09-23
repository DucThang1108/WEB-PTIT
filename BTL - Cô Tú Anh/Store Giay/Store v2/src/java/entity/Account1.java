/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

/**
 *
 * @author LE VIET TRUNG
 */
public class Account1 {
    private String name;
    private String SDT;
    private String Email;
    private String pass;

    public Account1() {
    }

    public Account1(String name, String SDT, String Email, String pass) {
        this.name = name;
        this.SDT = SDT;
        this.Email = Email;
        this.pass = pass;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSDT() {
        return SDT;
    }

    public void setSDT(String SDT) {
        this.SDT = SDT;
    }

    public String getEmail() {
        return Email;
    }

    public void setEmail(String Email) {
        this.Email = Email;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    @Override
    public String toString() {
        return "Account1{" + "name=" + name + ", SDT=" + SDT + ", Email=" + Email + ", pass=" + pass + '}';
    }
    
    
}
