import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyAppPage(),
      debugShowCheckedModeBanner: false,
      title: 'Drawer',
    );
  }
}

class MyAppPage extends StatefulWidget {
  const MyAppPage({super.key});

  @override
  State<MyAppPage> createState() => _MyAppPageState();
}

class _MyAppPageState extends State<MyAppPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Drawer'), backgroundColor: Colors.deepOrange),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: const Text('Uttam Bhanderi'),
              accountEmail: const Text('Uttam.patel.9298@gmail.com'),
              currentAccountPicture: Image.network(
                'https://upload.wikimedia.org/wikipedia/commons/1/17/Google-flutter-logo.png',
              ),
            ),

            const Card(
              child: ListTile(
                leading: Icon(Icons.home),
                title: Text("Home"),
                trailing: Icon(Icons.double_arrow),
              ),
            ),
            const Card(
              child: ListTile(
                leading: Icon(Icons.person),
                title: Text("Account"),
                trailing: Icon(Icons.double_arrow),
              ),
            ),
            const Card(
              child: ListTile(
                leading: Icon(Icons.info),
                title: Text("Info"),
                trailing: Icon(Icons.double_arrow),
              ),
            ),

            const Card(
              child: ListTile(
                leading: Icon(Icons.star),
                title: Text("Rate us"),
                trailing: Icon(Icons.double_arrow),
              ),
            ),
            const Card(
              child: ListTile(
                leading: Icon(Icons.phone),
                title: Text("Contact us"),
                trailing: Icon(Icons.double_arrow),
              ),
            ),
            const Card(
              child: ListTile(
                leading: Icon(Icons.logout),
                title: Text("Log out"),
                trailing: Icon(Icons.double_arrow),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
