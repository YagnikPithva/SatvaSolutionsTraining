package OOPS;

public class Class_Obj_Encp {
    // Properties
    private String name;
    private int age;
    private String studentId;

    // Constructor
    public Class_Obj_Encp(String name, int age, String studentId) {
        this.name = name;
        this.age = age;
        this.studentId = studentId;
    }

    // Getters
    public String getName() {
        return name;
    }

    public int getAge() {
        return age;
    }

    public String getStudentId() {
        return studentId;
    }

    // Setters
    public void setName(String name) {
        this.name = name;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public void setStudentId(String studentId) {
        this.studentId = studentId;
    }

    // Methods
    public void displayStudentInfo() {
        System.out.println("\nStudent Name: " + name);
        System.out.println("Student Age: " + age);
        System.out.println("Student ID: " + studentId);
    }

    public static void main(String[] args) {
        // Creating an object of Student class
        Class_Obj_Encp student = new Class_Obj_Encp("Yagnik", 22, "001");
        
        // Displaying student information
        student.displayStudentInfo();
        
        // Modifying student information
        student.setName("Yagnik Pithva");
        student.setAge(23);
        
        // Displaying modified student information
        student.displayStudentInfo();
    }
}