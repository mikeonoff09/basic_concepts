
/// In this file I will elaborate on the concept of abstraction as part of the object oriented
/// programming concepts.
/// 
/// Abstraction.- Allows us to hide the implementation details about a method to the user, allowing the
/// user to focus in the funcitonality and not worry about the specifics on how the method is implemented
/// 
/// In dart Abstraction is implemented by using abstract classes. Those classes can not be instantiated.
/// They can also have implemented methods and abstract method. The implemented methods have code that can be
/// reused by all the subclasses that inherit the abstract class, on the other side if we need to use the 
/// inimplemented methods in the subclass, we need to implment it there by using the `@override` notation

void main() {
  
  // You can't instantiate an abstract class
  final circle = Circle(2.5);
  
  // you can call the abstract class methods trough the specific object 
  circle.printArea();
  
}


/// An abstract class provides a guide for other classes to follow when implementing classes similar
/// to the abstract class. It also provides implementations for method that can be common for the different
/// classes that can extend the abstract class,
abstract class Shape {
  /// Abstract method (no implementation)
  void draw();

  /// Abstract method with implementation.
  /// this method is provided with a previous implementation 
  /// it can also be overriden by the classes extending this abstract class
  /// to provide implementation specoific to that class
  void printArea() {
    print("Area: ${calculateArea()}");
  }

  /// Abstract method without implementation
  double calculateArea();
}

/// You can't instantiate an abstract class so you need to create other clases that extend
/// the abstract class to use the methods thar it provides
/// the abstract class is the guide for the classes that extends it
class Circle extends Shape {
  /// of course the class extending the abstract class can have it's own properties and methods.
  double radius;

  /// this is a contructor. It's called when you create an object of this class
  Circle(this.radius);
  
  
  // You can also override the method implemented by the abstract class
  // to provide an object/class specific implementation
  @override
  void printArea(){
    print("The Circle Area is: ${calculateArea()}");
  }

  /// another class specific method that must be implemented in the 
  @override
  void draw() {
    print("Drawing a circle");
  }

  /// this method is not implemented in the abstract class because it is specific to the class extending 
  /// the abstract class.
  @override
  double calculateArea() {
    return 3.14 * radius * radius;
  }
}