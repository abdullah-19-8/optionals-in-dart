void main(List<String> args) {
  final String? name = null;
  // if we want to assign length of name to another variable we have to use question mark (?) 
  //after name variable to tell the compiler that name can be null
  final int? nameLength = name?.length;
  print(nameLength);

  if(name ==null){
    print('name is null');
  }else{
    // if we want to assign length of name to another variable we have don't have to use question mark (?) because name is not null
    final int nameLength = name.length;
    print(nameLength);
  }

}