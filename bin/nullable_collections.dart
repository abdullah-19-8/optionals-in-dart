void main(List<String> args) {
  List<String?>? name; // this list is nullable and can contain null values
  print(name); // it will give us null
  name = ['Abdullah', 'Ahmed', 'Ali'];
  print(name); // it will give us [Abdullah, Ahmed, Ali]
  name.add('test'); // it will add test name
  print(name); // it will give us [Abdullah, Ahmed, Ali, test]
  name.add(null); // it will add null name
  print(name); // it will give us [Abdullah, Ahmed, Ali, test, null]

  name = null;
  print(name); // it will give us null
  // name.add('test');  it will give us error because the list is null and we can not add to null list

  name?.add(
      'value'); // it will add value to the list if the list is not null and if null it will not add
  print(name); // it will give us null

  name = [];
  print(name); // it will give us []

  // name?.add('value'); // it will add value to the list if the list is not null and if null it will not add
  // print(name); // it will give us [value]

  name = null;

  // print(name.first);  it will give us error because the list is null and we can not get the first value of null list

  print(name?.first); // it will give us null because the list is null

  final String? firstName =
      name?.first; // it will give us null because the list is null
  print(firstName ??
      'no first name found'); // it will give us no first name found
}
