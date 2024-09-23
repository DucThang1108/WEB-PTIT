/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

/**
 *
 * @author LE VIET TRUNG
 */
public class Product {
    private int id;
    private String image;
    private String name;
    private int size;
    private String mau;
    private String loaiHang;
    private String loaiSP;
    private double giaSP;
    private String description;

    public Product() {
    }

    public Product(int id, String image, String name, int size, String mau, String loaiHang, String loaiSP, double giaSP, String description) {
        this.id = id;
        this.image = image;
        this.name = name;
        this.size = size;
        this.mau = mau;
        this.loaiHang = loaiHang;
        this.loaiSP = loaiSP;
        this.giaSP = giaSP;
        this.description = description;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getSize() {
        return size;
    }

    public void setSize(int size) {
        this.size = size;
    }

    public String getMau() {
        return mau;
    }

    public void setMau(String mau) {
        this.mau = mau;
    }

    public String getLoaiHang() {
        return loaiHang;
    }

    public void setLoaiHang(String loaiHang) {
        this.loaiHang = loaiHang;
    }

    public String getLoaiSP() {
        return loaiSP;
    }

    public void setLoaiSP(String loaiSP) {
        this.loaiSP = loaiSP;
    }

    public double getGiaSP() {
        return giaSP;
    }

    public void setGiaSP(double giaSP) {
        this.giaSP = giaSP;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    @Override
    public String toString() {
        return "Product{" + "id=" + id + ", image=" + image + ", name=" + name + ", size=" + size + ", mau=" + mau + ", loaiHang=" + loaiHang + ", loaiSP=" + loaiSP + ", giaSP=" + giaSP + ", description=" + description + '}';
    }
    
    
}
