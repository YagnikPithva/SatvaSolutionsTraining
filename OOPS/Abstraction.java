package OOPS;

abstract class Student {
    String name;
    int age;

    public Student(String name, int age) {
        this.name = name;
        this.age = age;
    }

    // Abstract method
    public abstract void study();

    // Concrete method
    public void displayInfo() {
        System.out.println("Name: " + name);
        System.out.println("Age: " + age);
    }
}

class GraduateStudent extends Student {
    public GraduateStudent(String name, int age) {
        super(name, age);
    }

    // Abstract method
    @Override
    public void study() {
        System.out.println(name + " is studying Graduate courses.");
    }
}

public class Abstraction {
    public static void main(String[] args) {
        Student student = new GraduateStudent("Yagnik", 22);
        // Accessing concrete method from the abstract class
        student.displayInfo();
        // Calling the abstract method implemented in the subclass
        student.study();
    }
}
