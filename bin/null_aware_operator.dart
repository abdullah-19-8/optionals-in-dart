void main(List<String> args) {
  // we know that if we want to know length of a value we will do like that.
  const String name = 'Abdullah';
  print(name.length);

  // but if we want to know the length of a null value it will give us error
  const String? name2 = null;
  // print(name2.length);

  // so we will use the null-aware operator to make the code optional
  print(name2?.length); // this will give us null

  String? name3;

  print(name3 ?? 'Ahmed'); // this will give us Ahmed because name3 is null but not change name3
  print(name3); // this will give us null

  String name4 = name3 ?? 'Ahmed'; // this will give us Ahmed and change name4
  print(name4); // this will give us Ahmed
}