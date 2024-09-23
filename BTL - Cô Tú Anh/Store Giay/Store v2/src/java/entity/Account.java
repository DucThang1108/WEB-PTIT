/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;
/**
 *
 * @author LE VIET TRUNG
 */
public class Account {
    private String Username;
    private String SDT;
    private String Email;
    private String Password;
    private int isSel;
    private int isAdmin;
    private int uID;

    public Account() {
    }

    public Account(String Username, String SDT, String Email, String Password, int isSel, int isAdmin, int uID) {
        this.Username = Username;
        this.SDT = SDT;
        this.Email = Email;
        this.Password = Password;
        this.isSel = isSel;
        this.isAdmin = isAdmin;
        this.uID = uID;
    }

    public String getUsername() {
        return Username;
    }

    public void setUsername(String Username) {
        this.Username = Username;
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

    public String getPassword() {
        return Password;
    }

    public void setPassword(String Password) {
        this.Password = Password;
    }

    public int getIsSel() {
        return isSel;
    }

    public void setIsSel(int isSel) {
        this.isSel = isSel;
    }

    public int getIsAdmin() {
        return isAdmin;
    }

    public void setIsAdmin(int isAdmin) {
        this.isAdmin = isAdmin;
    }

    public int getuID() {
        return uID;
    }

    public void setuID(int uID) {
        this.uID = uID;
    }

    @Override
    public String toString() {
        return "Account{" + "Username=" + Username + ", SDT=" + SDT + ", Email=" + Email + ", Password=" + Password + ", isSel=" + isSel + ", isAdmin=" + isAdmin + ", uID=" + uID + '}';
    }

    

   }
