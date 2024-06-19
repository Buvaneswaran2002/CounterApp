import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(useMaterial3: true),
        home: const CounterPage());
  }
}

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'CounterApp',
          style: TextStyle(
              fontSize: 34.0,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
              color: Colors.lime.shade600),
        ),
      ),
      body: Center(
          child: Container(
        width: 300,
        height: 300,
        alignment: Alignment.center,
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
            border: Border.all(color: Colors.grey.shade300),
            borderRadius: BorderRadius.circular(50),
            boxShadow: const [
              BoxShadow(
                  offset: Offset(10, 10), blurRadius: 12, color: Colors.grey),
            ],
            color: Colors.lime.shade600),
        child: Text(
          '$counter',
          textScaleFactor: 8,
        ),
      )),
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          FloatingActionButton(
            backgroundColor: Colors.lime,
            onPressed: () {
              setState(() {
                counter++;
              });
            },
            child: const Icon(Icons.add),
          ),
          const SizedBox(
            height: 20,
          ),
          FloatingActionButton(
            backgroundColor: Colors.lime,
            onPressed: () {
              if (counter <= 0) {
                Null;
              } else {
                setState(() {
                  counter--;
                });
              }
            },
            child: const Icon(Icons.remove),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: const <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.lime),
              child: Text(
                'Dashboard',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
            ListTile(
              //menu item of Drawer
              leading: Icon(Icons.home),
              title: Text('Home Page'),
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('My Profile'),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Account Settings'),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Text(
          "Phone no: +91-8668047443\nEmail : buvaneswaran2002@gmail.com",
          style: TextStyle(
              fontSize: 14.0,
              fontWeight: FontWeight.bold,
              color: Colors.lime.shade900),
          overflow: TextOverflow.clip,
        ),
      ),
    );
  }
}
