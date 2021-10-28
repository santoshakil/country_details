import 'model.dart';

void main(List<String> arguments) {
  var _data = countryDetails.fold<List<String>>(
      [],
      (p, c) => p
        ..addAll(c.states!.fold<List<String>>(
            [], (p2, c2) => p2..add(c2.stateName! + ', ' + c.countryName!))));
  print(_data);
}
