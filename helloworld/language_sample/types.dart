
number_test() {
  var a = 1;
  var hex = 0xDEADBEEF;
  
  var b = 1.1;
  var exponents = 1.42e5;
  
  num x = 1; // x can have both int and double values
  x += 2.5;
  print(x);

  double z = 1;
}

number_string() {
  // String -> int
  var one = int.parse('1');
  assert(one == 1);

  // String -> double
  var onePointOne = double.parse('1.1');
  assert(onePointOne == 1.1);

  // int -> String
  String oneAsString = 1.toString();
  assert(oneAsString == '1');

  // double -> String
  String piAsString = 3.14159.toStringAsFixed(2);
  assert(piAsString == '3.14');
}

string_test() {
  var s1 = '使用单引号创建字符串字面量。';
  var s2 = "双引号也可以用于创建字符串字面量。";
  var s3 = '使用单引号创建字符串时可以使用斜杠来转义那些与单引号冲突的字符串：\'。';
  var s4 = "而在双引号中则不需要使用转义与单引号冲突的字符串：'";
  var strs = [s1, s2, s3, s4];
  strs.forEach(print);
}

list_test() {
  var transport_tools = ['Car', 'Boat', 'Plane'];
  transport_tools.forEach(print);
  var list = [1, 2, 3];
  assert(list.length == 3);
  assert(list[1] == 2);

  list[1] = 1;
  assert(list[1] == 1);

  // 扩展操作符（...）
  var list2 = [-2, -1, 0, ... list];
  assert(list2.length == 6);

  // 空感知扩展操作符（...?）
  var null_list;
  var list3 = [0, ...? null_list];
  assert(list3.length == 1);
}

func(Function f) {
  print("---------------------");
  print(f.toString());
  f();
}

main() {
  var funcs = [number_test, number_string, string_test, list_test];
  funcs.forEach(func);
}


