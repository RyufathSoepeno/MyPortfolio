/// This code explains "super" in Java

/** The 'super' keyword allows referencing the parent class or superclass of a subclass in Java. 
It is often employed to access members (fields or methods) of the superclass that have been overridden in the subclass. 
You can call the superclass's method from within the subclass using super. methodName() */

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
