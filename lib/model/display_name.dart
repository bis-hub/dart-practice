class Name {
  var lstName = ["Bishal", "Ram", "Krishna"];

  String displayName(var index) => lstName[((index % lstName.length))];
}
