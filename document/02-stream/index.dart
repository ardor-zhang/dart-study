void main(List<String> args) {
  final a = [1, 2];
  a.add(2);

  String hi = 'Hi 🇩🇰';

  List<int> b = [1, 2, 3];
  print(b.sum());

  List<String> c = ['1'];
}

extension ListSum on List<int> {
  sum() {
    return this.reduce((value, element) => value + element);
  }
}
