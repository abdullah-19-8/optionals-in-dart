void main(List<String> args) {
  int a;
  // if we want to print it will give us error
  // print(a);
  int? b;
  // if we want to print it will give us null
  print(b);

  String? name = null;
  // if we want to print it will give us null
  print(name);
  name ??=
      'Abdullah'; // this operator will check if the variable is null or not if null it will assign the value to Abdullah
  print(name);

  // name ??= 'Ahmed'; // this code will not be executed because the variable is not null
  // print(name);
}
