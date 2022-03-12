import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  String text = 'Nothing Clicked';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          setState(() {
            text = 'FAB clicked';
          });
        },
        icon: const Icon(Icons.add),
        label: const Text('add'),
        elevation: 10,
        backgroundColor: Colors.grey,
        foregroundColor: Colors.amber,
        splashColor: Colors.red,
        hoverColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(text),
            const SizedBox(
              height: 40,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.amber,
                onPrimary: Colors.blue,
              ),
              onPressed: () {
                setState(() {
                  text = 'Elevated Button Pressed';
                });
              },
              child: Row(
                mainAxisSize: MainAxisSize.min,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const Icon(Icons.save),
                  const SizedBox(
                    width: 5,
                  ),
                  const Text('Save'),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextButton(
              style: TextButton.styleFrom(),
              onPressed: () {
                setState(() {
                  text = 'textbutton pressed';
                });
              },
              child: const Text(
                'OK',
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ButtonBar(
              alignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  style: TextButton.styleFrom(),
                  onPressed: () {
                    setState(() {
                      text = 'TextButton in ButtonBar clicked';
                    });
                  },
                  child: const Text('NO'),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      text = 'ElevatedButton in ButtonBar clicked';
                    });
                  },
                  child: const Text('Save'),
                ),
              ],
            ),
            MaterialButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              color: Colors.grey,
              child: const Text(
                'Enter',
                style: TextStyle(color: Colors.red),
              ),
              onPressed: () {
                text = 'Material Button Clicked';
              },
            ),
          ],
        ),
      ),
    );
  }
}
