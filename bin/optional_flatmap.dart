void main(List<String> args) {
  String? firstName = 'John';
  String? lastName = 'Doe';
  final fullName = firstName.flatMap(
        (firstName) => lastName.flatMap(
          (latName) => '$firstName $lastName',
        ),
      ) ??
      'Either first name or last name or both are empty';
  print(fullName);
}

extension FlatMap<T> on T? {
  R? flatMap<R>(
    R? Function(T) callback,
  ) {
    final shadow =
        this; // shadowing the value, so we can use it in the callback
    return shadow == null ? null : callback(shadow);
  }
}
