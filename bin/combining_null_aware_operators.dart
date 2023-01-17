void main(List<String> args) {
  String? name;

  void changeName() {
    name = 'John';
  }

  changeName();

  // in here name2 is String? because dart don't know that name is not null

  final name2 = name;
  print(name2);

  // we can use the null aware operator to solve this problem
  if(name?.contains('J') ?? false) { // if name is null then false
    print('name contains J');
  }
  // or
  if(name?.contains('J') == true) {
    print('name contains J');
  }

  // both of them are the same but the first one is more readable.
}
