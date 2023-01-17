void main(List<String> args) {
  // now we can test our function
  print(getFullName2(null, null)); // it will return null
  print(getFullName2('John', null)); // it will return null
  print(getFullName2(null, 'Doe')); // it will return null
  print(getFullName2('John', 'Doe')); // it will return John Doe


}

String? firstName;
String? lastName;

void getFullName() {
  // we have to check if firstName and lastName are null
  final String fullName = firstName ?? lastName ?? 'John Doe';
  print(fullName);
}

// it's back practice because if we have a lot of optional values it will be hard to read
// and we have to check if the value is null or not
// so we can use unwrapping multiple optionals.

T? unwrap<T>(
  // this T represent the type of the value
  // in this case it is String
  List<T?> values, // it take list of optional values
  T Function(List<T>) callback,
) =>
    values.any((e) => e == null) ? null : callback(values.cast<T>());

// we can use this function to unwrap multiple optionals

String getFullName2(String? firstName, String? lastName) =>
    unwrap(
      [firstName, lastName],
      (names) => names.join(' '),
    ) ??
    'Empty';
