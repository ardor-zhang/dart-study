void main(List<String> args) {
  print('Hello world!');

  var voyager = Spacecraft('Voyager I', DateTime(1977, 9, 5));
  voyager.describe();

  var voyager3 = Spacecraft.unlaunched('Voyager III');
  voyager3.describe();

  print(1.isNegative);

  // Iterable<int> t = [1];
  // final c = t.firstWhere((element) => element == 2);

  const numbers = [1, 3, -2, 0, 4, 5];

  var numbersUntilZero = numbers.takeWhile((number) => number.isNegative);
  print('Numbers until 0: $numbersUntilZero');

  String text;

  if (DateTime.now().hour < 12) {
    text = "It's morning! Let's make aloo paratha!";
  } else {
    text = "It's afternoon! Let's make biryani!";
  }

  print(text);
  print(text.length);

  try {
    
  } catch (e) {
    
  }
}

var name = 'Ardor';
var list1 = ['a', 'b'];
var list2 = ['a', 'b', 1];
var image = {
  'tags': ['saturn'],
  'url': '//path/to/saturn.jpg'
};

class Spacecraft {
  String name;
  DateTime? launchDate;

  int? get launchYear => launchDate?.year;

  Spacecraft(this.name, this.launchDate);

  Spacecraft.unlaunched(String name) : this(name, null);

  void describe() {
    print('Spacecraft: $name');
    // Type promotion doesn't work on getters.
    var launchDate = this.launchDate;
    if (launchDate != null) {
      int years = DateTime.now().difference(launchDate).inDays ~/ 365;
      print('Launched: $launchYear ($years years ago)');
    } else {
      print('Unlaunched');
    }
  }
}

int sumUp(int a, [int b = 3, int c = 3]) {
  return a + b + c;
}

class Point {
  double x, y;

  Point(this.x, this.y);

  Point.origin(a, b)
      : x = a,
        y = b {}
}

Iterable<int> t = [1];
final a = t.toList()[1];

Iterable<int> t1 = [];
final b = t1.first;

final c = t.firstWhere((element) => false);

final d = 'aa';


