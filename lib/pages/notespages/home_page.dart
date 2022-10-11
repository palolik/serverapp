//
// this is the working home page
//
import 'package:flutter/material.dart';
import 'package:webcheck2/pages/notespages/list_notes_page.dart';
import 'package:webcheck2/pages/notespages/add_notes_page.dart';

class NoteDatabase extends StatefulWidget {
  NoteDatabase({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<NoteDatabase> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Notes Database'),
            ElevatedButton(
              onPressed: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AddNotesPage(),
                  ),
                )
              },
              child: Text('Add', style: TextStyle(fontSize: 20.0)),
              style: ElevatedButton.styleFrom(primary: Colors.red),
            )
          ],
        ),
        backgroundColor: Colors.redAccent,
      ),
      body: ListNotesPage(),
    );
  }
}
