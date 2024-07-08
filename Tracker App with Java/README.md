# Read This!

## 1. protected:
The protected keyword is an access modifier used for class members (fields, methods, and constructors). It indicates that the member is accessible within its own package and by subclasses (derived classes). Here's a brief overview:

Same Package: Classes in the same package can access protected members.
Subclasses: Subclasses, even if they are in different packages, can access protected members. However, access from a subclass outside the package is possible only through inheritance.


## 2. Subclass:
```
class Dog extends Animal {
    // Constructor
    Dog(String name) {
        super(name); // Call the constructor of the superclass (Animal)
    }

    // Overriding the method of the superclass
    @Override
    void makeSound() {
        System.out.println("Bark");
    }
}
```

## 3. Superclass:
```
class Animal {
    // Field
    String name;

    // Constructor
    Animal(String name) {
        this.name = name;
    }

    // Method
    void makeSound() {
        System.out.println("Some generic animal sound");
    }
}
```
=====================================
```
public class Main {
    public static void main(String[] args) {
        Animal myAnimal = new Animal("Generic Animal");
        myAnimal.makeSound(); // Output: Some generic animal sound

        Dog myDog = new Dog("Buddy");
        myDog.makeSound(); // Output: Bark

        System.out.println("My dog's name is " + myDog.name); // Output: My dog's name is Buddy
    }
}
```
-An instance of Animal is created and its makeSound() method is called.
-An instance of Dog is created, demonstrating inheritance (it has the name field) and method overriding (it has a specific makeSound() implementation).

======================================

## 4. Override
The @Override annotation in OOP indicates that a method is intended to override a method declared in a superclass. It is used to ensure that the subclass method is indeed overriding a method from its superclass. If the method does not actually override a method from the superclass, the compiler will generate an error.

In a nutshell:
Imagine you have a recipe for making a cake that your grandmother gave you. Now, your mom has a slightly different way of making the same cake, so she writes down her version of the recipe. Your mom is basically saying, "Here's how I do it differently."

In programming, when a class inherits methods (recipes) from a parent class (your grandmother's recipe), sometimes the child class (your mom's recipe) wants to change how one of those methods works. When your mom writes her version of the recipe, she is "overriding" the original recipe.

The @Override annotation is like a label saying, "Hey, this method is my version of that old method from my parent class." It tells the computer to check and make sure that your new method is actually supposed to replace one from the parent class. This helps catch mistakes. If the label is there but the method doesn't match any method in the parent class, the computer will give you an error.

So, in short, @Override is like a safety check to ensure you're correctly replacing an existing method from a parent class with a new version in the child class.


