import 'package:flutter/material.dart';
import 'package:notese/models/note_database.dart';
import 'package:notese/pages/notes_page.dart';
import 'package:provider/provider.dart';

void main() async {
  // initialize note isar database
  WidgetsFlutterBinding.ensureInitialized();
  await NoteDatabase.initialize();

  runApp(
    ChangeNotifierProvider(
      create: (context) => NoteDatabase(),
      child: const NoteseApp(),
    ),
  );
}

class NoteseApp extends StatelessWidget {
  const NoteseApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NotesPage(),
    );
  }
}
