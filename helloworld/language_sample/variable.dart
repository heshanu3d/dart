var name = 'Voyager I';
var year = 1977;
var antennaDiameter = 3.7;
var flybyObjects = ['Jupiter', 'Saturn', 'Uranus', 'Neptune'];
var image = {
  'tags': ['saturn'],
  'url': '//path/to/saturn.jpg'
};
var n = null;

late String s;
late String s_not_init;

void main() {
  print(n);
  
  s = "late definition var";
  print(s);
  print(s_not_init);
}