void main(List<String> args) {
  print(fullName(null, null)); // it will return ''
  print(fullName('John', null)); // it will return John
  print(fullName(null, 'Doe')); // it will return Doe
  print(fullName('John', 'Doe')); // it will return John Doe
}

String fullName(String? firstName, String? lastName) =>
    '${firstName.orDefault} ${lastName.orDefault}';

extension DefaultValues<T> on T? {
  T get orDefault {
    final shadow = this;
    if (shadow != null) {
      return shadow;
    }
    switch (T) {
      case String:
        return '' as T;
      case int:
        return 0 as T;
      case double:
        return 0.0 as T;
      case bool:
        return false as T;
      case List:
        return [] as T;
      case Map:
        return {} as T;
      default:
        throw Exception('no default value for type $T');
    }
  }
}
