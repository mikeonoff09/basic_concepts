// main class
void main() {
  // create a person object
  final person = Person(
    email: 'mail@mail.com',
    name: 'John Doe',
    phone: '1234567890',
  );
  try {
    person.email = 'main.com';
  } catch (e) {
    print(e.toString());
  }
  print(person.email);
}

class Person {
  String _email;

  /// When not using a setter, the field can be made final
  final String _name; // https://dart.dev/tools/linter-rules/prefer_final_fields
  String phone;

  Person({
    required email,
    required String name,
    this.phone = '',// Use 'this' to set the value of the field
  })  : _email = email,
        _name = name
  // phone = phone
  ;

  // getters and setters
  String get email => _email;
  String get name => _name;

  // this is not needed because the phone field is public, and can be accessed directly
  // String get phone => phone;

  set email(String email) {
    // prefer guard statements to validate input, avoid nested if statements and..
    // improve code readability
    if (!isValidEmail(email)) {
      throw Exception('Invalid email');
    }

    _email = email;
  }
  // void set name(String name) => _name = name;
  // void set phone(String phone) => phone = phone;

  bool isValidEmail(String email) {
    // Regular expression pattern for email validation
    final RegExp emailRegex = RegExp(
      r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
    );

    // Check if the email matches the pattern
    return emailRegex.hasMatch(email);
  }
}
