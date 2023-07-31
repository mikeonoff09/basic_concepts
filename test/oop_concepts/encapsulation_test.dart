import 'package:basic_concepts/basic_concepts.dart';
import 'package:test/test.dart';

void main() {
  group("email validation test", () {
    test('error', () {
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
      expect(person.email, 'mail@mail.com');
    });
    test('success', () {
      final person = Person(
        email: 'mail@mail.com',
        name: 'John Doe',
        phone: '1234567890',
      );
      try {
        person.email = 'new_mail@mail.com';
      } catch (e) {
        print(e.toString());
      }
      expect(person.email, 'new_mail@mail.com');
    });
  });
}
