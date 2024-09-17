//  some type of exceptions:
// DeferredLoadException ==> This exception occurs when there is a problem loading a library
// FormatException ==> This exception occurs when a string or any other data type does not have the expected format and cannot be processed
// IntegerDivisionByZeroException ==> This exception occurs when a number is divided by zero
// IOException ==> A base class for all I/O exceptions
// IsolateSpawnException ==> This exception occurs when an isolate cannot be created
// Timeout ==> This exception occurs when a scheduled timeout occurs while waiting for an asynchronous result

// Assert
/*
In Dart, assert is a built-in keyword used primarily for debugging purposes. It allows developers to verify that certain conditions hold true during the execution of a program. An assertion is a statement that checks a boolean condition, and if the condition evaluates to false, an AssertionError is thrown, effectively disrupting the normal flow of execution. This mechanism is particularly useful for catching logical errors early in the development process.
Usage of assert
The syntax for using assert is straightforward:
assert(condition, optionalMessage);

condition: This is a boolean expression that you expect to be true. If it evaluates to false, the assertion fails.
optionalMessage: This is an optional string that provides additional context about the assertion failure, which can be helpful for debugging.

Debugging Tool: assert statements are invaluable during development as they help ensure that certain assumptions about the code are valid, enabling developers to catch bugs early.*/

// Try And Catch And Finally
/* 
  In Dart, the try and catch statements are used for handling exceptions, which are errors that occur during program execution. This mechanism allows developers to gracefully manage errors without crashing the application.
Basic Syntax
The basic structure of a try-catch block is as follows:
dart
try {
  // Code that may throw an exception
} catch (e) {
  // Code that handles the exception
}

try block: This is where you place the code that might throw an exception. If an exception occurs, control is transferred to the catch block.
catch block: This block executes if an exception is thrown in the try block. The variable e holds the exception object, allowing you to inspect or log it.
// e in catch indicates the type of error for us.
// by using on: we can print different things for different type of error: on FormatException, on RangeError, and ...

Additionally, you can use a finally block, which executes regardless of whether an exception was thrown or not.

*/

// Throw
/*
  Your Dart code can throw and catch exceptions. Exceptions are errors indicating that something unexpected happened. If the exception isn't caught, the isolate that raised the exception is suspended, and typically the isolate and its program are terminated.

In contrast to Java, all of Dart's exceptions are unchecked exceptions. Methods don't declare which exceptions they might throw, and you aren't required to catch any exceptions.

Dart provides Exception and Error types, as well as numerous predefined subtypes. You can, of course, define your own exceptions. However, Dart programs can throw any non-null object—not just Exception and Error objects—as an exception.

Throw
#
Here's an example of throwing, or raising, an exception:

throw FormatException('Expected at least 1 section');
content_copy
You can also throw arbitrary objects:

throw 'Out of llamas!';
content_copy
Note
Production-quality code usually throws types that implement Error or Exception.

Because throwing an exception is an expression, you can throw exceptions in => statements, as well as anywhere else that allows expressions:

void distanceTo(Point other) => throw UnimplementedError();
 */

// Assert
// void main() {
//   int age = 20;
//   assert(age >= 18, 'Age must be at least 18 - "this is my written message"');
//   print('Access granted.');
// }

// try and catch
// void main() {
//   try {
//     int result = 10 ~/ 0; // This will throw an exception
//   } catch (e) {
//     print('written by me: Caught an exception: $e');
//   } finally {
//     print('written by me: This will always execute.');
//   }
// }

// using on

// void main() {
//   String message = "Hello";

//   try {
//     print("The character at position 5 is ${message[5]}.");
//   } on RangeError {
//     print('RangeError: Index out of bounds.');
//   } catch (e) {
//     print('Caught an unexpected exception: $e');
//   } finally {
//     print('written by me: This will always execute.');
//   }
// }

// example - 3 of try and catch
// void main() {
//   String a = '12.12';
//   try {
//     var b = int.parse(a);
//     print(b);
//   } on RangeError catch (e) {
//     print('this is: on RangeError');
//     print(e);
//   } on FormatException catch (e) {
//     print('this is: on FormatException');
//     print(e);
//   } catch (e) {
//     print('this is catch');
//     print(e);
//   } finally {
//     print('this is: on finally');
//   }
// } // End Of Main()

// Throw
void main() {
  try {
    int age = -5;
    if (age < 0) {
      throw Exception('Age cannot be negative');
    }
    print('Age: $age');
  } catch (e) {
    print('Exception caught: $e');
  }
}
