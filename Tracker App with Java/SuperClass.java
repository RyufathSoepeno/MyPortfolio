/// This code explains "super" in Java

class SuperClass {
    SuperClass() {
        System.out.println("SuperClass constructor");
    }

    void display() {
        System.out.println("SuperClass display()");
    }
}

class SubClass extends SuperClass {
    SubClass() {
        super(); // calls SuperClass constructor
        System.out.println("SubClass constructor");
    }

    @Override
    void display() {
        super.display(); // calls SuperClass display()
        System.out.println("SubClass display()");
    }
}
