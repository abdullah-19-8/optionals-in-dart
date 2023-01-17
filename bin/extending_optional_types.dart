void main(List<String> args) {
  String? getNameOptional() {
    // in this case we can return null or a String

    // return 'John';
    // or
    return null;
  }

  String getName() {
    // in this case we can't return null

    return 'John';
    // return null; // this will throw an error
  }

  final String name = getNameOptional() ?? getName();

  print(name);

  // in this case we don't need to use the null aware operator (?) because the Object? has this question mark.

  name.describe(); // String: John

  final String? nameOptional = getNameOptional();

  // in this case we need to use the null aware operator (?) because the Object doesn't have this question mark.
  nameOptional?.des(); // null
}

extension Describe on Object? {
  void describe() {
    if (this == null) {
      print('null');
    } else {
      print("$runtimeType: $this");
    }

  }
}

extension Des on Object {
  void des() {
    // we don't need to check if this is null because the Object doesn't have the question mark it can't be null.
    if (this == null) {
      print('null');
    } else {
      print("$runtimeType: $this");
    }

  }
}

