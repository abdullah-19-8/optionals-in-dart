void main(List<String> args) {
  try {
    final String? name = null;
    // this code will throw an exception because name is null and
    // we are trying to access it without checking if it is null or not
    // and it will crash the app
    print(name!); // this is called force unwrapping and we should avoid it.


  // this code will not throw an exception because we are checking if name is null or not
  // and if it is null we are assigning a default value to it
  // print(name ?? 'default value'); // we have to comment other print if we want this print to work because the other print will crash the application.
  } catch (error) {
    print(error);
  }

}
