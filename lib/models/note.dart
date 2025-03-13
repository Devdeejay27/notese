import 'package:isar/isar.dart';

// this line is needed to generate file
// then run: dart run build_runner build
part 'note.g.dart'; //g stands for generated

@collection // annotates a collection
class Note {
  Id id = Isar.autoIncrement; //auto increment means it starts from zero
  late String text;
}
