void main(List<String> args) {
  int? number = 20;

  number = null;
  print(number);
  if(number == null) {
    // if we assign number = null this code will be executed
    // else it will give as warning
    print('number is null');
  } else {
    print('number is not null');
  }
}