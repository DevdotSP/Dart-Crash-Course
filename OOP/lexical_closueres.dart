//Lexical Closures
void main() {
  Function fun(String str) {
    String message;
    Function say = (String msg) {
      message = msg;
      print(message);
    };

    return say;
  }

  var sayFunction = fun('Hello'); // Assign the returned function to a variable
  sayFunction('World'); // Now, invoke the returned function
}
