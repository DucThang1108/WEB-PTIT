/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

/**
 *
 * @author DUC THANG
 */
public class SinhVien {
    private String id;
    private String masv;
    private String hodem;
    private String tensv;
    private String telsv;
    private String emailsv;

    public SinhVien() {
    }

    public SinhVien(String id, String masv, String hodem, String tensv, String telsv, String emailsv) {
        this.id = id;
        this.masv = masv;
        this.hodem = hodem;
        this.tensv = tensv;
        this.telsv = telsv;
        this.emailsv = emailsv;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getMasv() {
        return masv;
    }

    public void setMasv(String masv) {
        this.masv = masv;
    }

    public String getHodem() {
        return hodem;
    }

    public void setHodem(String hodem) {
        this.hodem = hodem;
    }

    public String getTensv() {
        return tensv;
    }

    public void setTensv(String tensv) {
        this.tensv = tensv;
    }

    public String getTelsv() {
        return telsv;
    }

    public void setTelsv(String telsv) {
        this.telsv = telsv;
    }

    public String getEmailsv() {
        return emailsv;
    }

    public void setEmailsv(String emailsv) {
        this.emailsv = emailsv;
    }

    @Override
    public String toString() {
        return "SinhVien{" + "id=" + id + ", masv=" + masv + ", hodem=" + hodem + ", tensv=" + tensv + ", telsv=" + telsv + ", emailsv=" + emailsv + '}';
    }

}   