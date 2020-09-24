package entity;

public class Employee {
    private int id;
    private int phone;
    private int age;
    private float weight;
    private float height;
    private String fName;
    private String lName;
    private String gender;
    private String eMail;
    private String city;
    private String country;
    public Employee() {
        super();
    }
    public Employee(int id, int phone, int age, float weight, float height, String fName, String lName, String gender,
        String eMail, String city, String country) {
        super();
        this.id = id;
        this.phone = phone;
        this.age = age;
        this.weight = weight;
        this.height = height;
        this.fName = fName;
        this.lName = lName;
        this.gender = gender;
        this.eMail = eMail;
        this.city = city;
        this.country = country;
    }
    public int getId() {
        return id;
    }
    public void setId(int id) {
        this.id = id;
    }
    public int getPhone() {
        return phone;
    }
    public void setPhone(int phone) {
        this.phone = phone;
    }
    public int getAge() {
        return age;
    }
    public void setAge(int age) {
        this.age = age;
    }
    public float getWeight() {
        return weight;
    }
    public void setWeight(float weight) {
        this.weight = weight;
    }
    public float getHeight() {
        return height;
    }
    public void setHeight(float height) {
        this.height = height;
    }
    public String getfName() {
        return fName;
    }
    public void setfName(String fName) {
        this.fName = fName;
    }
    public String getlName() {
        return lName;
    }
    public void setlName(String lName) {
        this.lName = lName;
    }
    public String getGender() {
        return gender;
    }
    public void setGender(String gender) {
        this.gender = gender;
    }
    public String geteMail() {
        return eMail;
    }
    public void seteMail(String eMail) {
        this.eMail = eMail;
    }
    public String getCity() {
        return city;
    }
    public void setCity(String city) {
        this.city = city;
    }
    public String getCountry() {
        return country;
    }
    public void setCountry(String country) {
        this.country = country;
    }


}