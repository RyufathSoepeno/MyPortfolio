# Budget Buddy Glossary

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


Main code you can say is located in the "home" file folder in lib


## 5. Key: 
A unique identifier used to manage and track widgets in a Flutter app, ensuring that the right widget is updated or maintained during the app's lifecycle changes. It's like a name tag that helps distinguish one widget from another in a list.

## 6. List<>: 
A way to organize and store a collection of items, like a grocery list where each item is placed in order.


## 7. Map<>: 
A way to store pairs of related items, like a dictionary where each word (key) has a definition (value).


## 8. static: 
A keyword used to indicate that a property or method belongs to the class itself rather than any specific instance of the class.


## 9. =>: 
A shorthand way to write simple functions or expressions, like an arrow pointing from the input to the output.


## 10. ?: 
Used to indicate that a value might be null, meaning it might not have any value at all.


## 11. ??: 
Used to provide a default value if the original value is null, like saying "use this unless it's missing, then use that."


## 12. !=: 
A symbol meaning "not equal to," used to compare two values and see if they are different.






## 13. Why is ParamType important?: 
It specifies the type of parameters a function or method can accept, ensuring correct usage and avoiding errors.


## 14. ListEquality: 
A way to compare two lists to check if they contain the same elements in the same order.


## 15. Why are some codes named in underscores?: 
Names starting with an underscore are meant to be private, meaning they are intended for use only within a certain part of the code.


## 16. Why are there curly brackets in brackets? What do they identify?: 
Curly brackets inside brackets are used to define named parameters in a function, providing more clarity and flexibility in how arguments are passed.


## 17. typedef: 
A way to create an alias for a function type, making the code easier to read and manage.


## 18. T Function: 
Describes a function that returns a value of type T, where T is a placeholder for any type.


## 19. abstract class: 
A class that cannot be instantiated on its own and is meant to be extended by other classes.


## 20. dynamic: 
A type that can hold any kind of value, allowing for more flexible and less strict code.


## 21. StructBuilder<T>: 
A way to construct complex data structures with a specified type T.


## 22. extension: 
Allows adding new functionality to existing classes without modifying their code.







## 23. What is 'T' in Flutter?: 
A generic type placeholder used to represent any type, allowing for reusable and flexible code.


## 24. final: 
A keyword indicating that a variable's value is set once and cannot be changed afterward.


## 25. Node: 
A basic unit or element in a data structure, like a point in a network or tree.


## 26. FocusNode: 
An object that manages focus, allowing the app to know which widget is currently selected or active.


## 27. FormFieldController: 
A controller used to manage the state and behavior of a form field.


## 28. TextEditingController: 
A controller that manages the state of a text input field.







## 29. dispose(): 
A method called to clean up resources when a widget is no longer needed, preventing memory leaks.


## 30. initState: 
A method called when a widget is first created, used to initialize its state.


## 31. What is struct?: 
A value type that groups related variables together, similar to a class but typically used for smaller, simpler data.


## 32. late: 
A keyword indicating that a variable will be initialized later, but before it is used.


## 33. DateTime: 
A type used to represent a specific point in time, including date and time information.


## 34. >>: 
A bitwise operator used to shift bits to the right, effectively dividing by powers of two.


## 35. TextEditingController: 
A controller that manages the state of a text input field.


## 36. FormFieldController: 
A controller used to manage the state and behavior of a form field.


## 37. FlutterFlowModel: 
A model used in FlutterFlow, a tool for building Flutter applications, to manage app data and state.


## 38. CategoryStruct: 
A structured type representing a category, typically containing related fields and properties.






## 39. BuildContext: 
An object that provides information about the location of a widget in the widget tree, used to access resources and manage widget state.


## 40. FlutterFlowDynamicModels: 
Models in FlutterFlow that can dynamically change and adapt to different data and states within the app.





### Widgets:

## 1. Widget: 
The basic building block of a Flutter app, like a Lego piece that can be combined with others to create the user interface.


## 2. Align: 
A widget that positions its child within itself according to a specified alignment, like placing an object at the center or top-right corner of a box.


## 3. Padding: 
A widget that adds empty space around its child, like adding cushioning around a picture in a frame.


## 4. setState: 
A method used to update the user interface by notifying the app that something has changed and needs to be redrawn.


## 5. Container: 
A versatile widget that can contain other widgets and apply styles, such as background color, padding, and margins.


## 6. FlutterFlowTheme: 
A collection of style definitions used to maintain consistent look and feel throughout a FlutterFlow app.


## 7. BoxDecoration: 
A class used to define the visual appearance of a box, including background color, border, and shadows.





## 8. MainAxisSize: 
A property that determines how much space a widget should take along its main axis, like deciding whether a row should be as wide as its children or as wide as possible.


## 9. MainAxisAlignment: 
A property that controls how children are spaced along the main axis, like aligning items in a row or column to the start, center, or end.


## 10. CrossAxisAlignment: 
A property that controls how children are aligned along the cross axis, like aligning items in a row to the top, middle, or bottom.


## 11. EdgeInsetsDirectional: 
A class that specifies padding or margins based on the reading direction, useful for handling left-to-right and right-to-left languages.


## 12. FFAppState: 
A class in FlutterFlow used to manage the state of the entire app, storing data that needs to be accessed from different parts of the app.


## 13. FFButtonWidget: 
A customizable button widget provided by FlutterFlow.






## 14. Flexible: 
A widget that allows its child to take up any available space, either by expanding or shrinking as needed.


## 15. child: 
A property that refers to the widget contained within another widget, like a button inside a container.


## 16. constraints: 
Rules or limits that define how a widget can be sized and positioned, like setting a maximum or minimum width.


## 17. offset: 
A value that represents a distance in two-dimensional space, used for positioning and moving widgets.


## 18. spreadRadius: 
A property that controls the spread of a shadow around a box, making it look more or less blurry.


## 19. currency: 
A type of data or a format used to represent money values.


## 20. animateFromLastPercent: 
A property used to animate a change in a widget's state based on its previous state, creating smooth transitions.


## 21. lineHeight: 
A property that sets the height of each line of text, useful for adjusting text spacing.








## 22. progressColor: 
A property that sets the color of a progress indicator, like a loading bar.


## 23. useGoogleFonts: 
A property that allows the use of Google Fonts in the app, providing a wide range of font styles.


## 24. FFAppState: 
A class in FlutterFlow used to manage the state of the entire app, storing data that needs to be accessed from different parts of the app.


## 25. SystemChrome: 
A class that allows customization of system UI elements like status bar and navigation bar.


## 26. SystemUiOverlayStyle: 
A class used to define the style of system overlays, like the status bar, including colors and brightness.







## 27. Scaffold: 
A basic layout structure that provides an app with a consistent visual structure, including a place for the app bar, body, and floating action button.


## 28. GestureDetector: 
A widget that detects and responds to user gestures, like taps, swipes, and pinches.


## 29. SafeArea: 
A widget that ensures its child is not obscured by system UI elements, like the status bar or notch.


## 30. textInputAction: 
A property that specifies the action button on the keyboard, like "done," "next," or "search."


## 31. textCapitalization: 
A property that controls how text is capitalized in a text field, like setting all caps or capitalizing each word.

## 32. Hashtags

1. ###: This format will display a number without leading zeros. For example:
123 will be displayed as 123.
45 will be displayed as 45.
7 will be displayed as 7.

2. #: This is a single-digit placeholder. If the number is zero, it will be displayed as an empty space. For example:
123 will be displayed as 123.
045 will be displayed as 45.
007 will be displayed as 7.

3. #, ###: This format includes a comma as a thousand separator -- Good for Rupiah Currency. For example:
1234 will be displayed as 1,234.
56789 will be displayed as 56,789.
1234567 will be displayed as 1,234,567.
