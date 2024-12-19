package OOPS;

// Base class
class Employee {
    // Common fields
    String name;
    int id;
    
    public Employee() {
        System.out.println("Employee class constructor");
    }

    public Employee(String name, int id) {
        this.name = name;
        this.id = id;
    }

    public void work() {
        System.out.println(name + " is working.");
    }

    public void displayInfo() {
        System.out.println("Name: " + name);
        System.out.println("ID: " + id);
    }
}

class Manager extends Employee {

    public Manager() {
        System.out.println("Manager class constructor");
    }

    public Manager(String name, int id) {
        super(name, id);
    }

    // Manager specific behavior (overriding)
    @Override
    public void work() {
        System.out.println(name + " is managing the team.");
    }

    // Manager-specific method
    public void conductMeeting() {
        System.out.println(name + " is conducting a meeting.");
    }
}

class Developer extends Employee {

    public Developer() {
        System.out.println("Developer class constructor");
    }

    public Developer(String name, int id) {
        super(name, id);
    }

    // Developer specific behavior (overriding)
    @Override
    public void work() {
        System.out.println(name + " is coding software.");
    }

    // Developer-specific method
    public void writeCode() {
        System.out.println(name + " is writing code.");
    }
}

public class Inhrtnc_Polymrphsm {
    public static void main(String[] args) {
        // Default constructors
        new Manager();
        new Developer();

        // Parameterized constructors
        Employee manager = new Manager("Manager", 101);
        Employee developer = new Developer("Developer", 102);

        // Accessing common methods
        manager.displayInfo();
        developer.displayInfo();

        // Accessing overridden methods
        manager.work();
        developer.work();

        // Accessing specific methods
        ((Manager) manager).conductMeeting();
        ((Developer) developer).writeCode();
    }
}
