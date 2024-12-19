package OOPS;

interface StudentActions {
    void study();

    void takeExam();
}

class UndergraduateStudent implements StudentActions {
    String name;

    public UndergraduateStudent(String name) {
        this.name = name;
    }

    @Override
    public void study() {
        System.out.println(name + " is studying undergraduate courses.");
    }

    @Override
    public void takeExam() {
        System.out.println(name + " is taking an undergraduate exam.");
    }
}

class GraduateStudent implements StudentActions {
    String name;

    public GraduateStudent(String name) {
        this.name = name;
    }

    @Override
    public void study() {
        System.out.println(name + " is studying graduate courses.");
    }

    @Override
    public void takeExam() {
        System.out.println(name + " is taking a graduate-level exam.");
    }
}

public class Interface {
    public static void main(String[] args) {
        StudentActions student1 = new UndergraduateStudent("Student 1");
        StudentActions student2 = new GraduateStudent("Student 2");

        student1.study();
        student1.takeExam();

        student2.study();
        student2.takeExam();
    }
}