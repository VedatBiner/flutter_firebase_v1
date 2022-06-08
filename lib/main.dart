import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_core/firebase_core.dart';

import 'screen/info_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Firebase Test',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        brightness: Brightness.dark,
      ),
      home: const MyHomePage(title: 'Firebase Test Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  _MyHomePageState() {
    print("my home page yaratılıyor.");
  }

  FirebaseDatabase database = FirebaseDatabase.instance;
  DatabaseReference ref = FirebaseDatabase.instance.ref();

  @override
  void didUpdateWidget(MyHomePage oldWidget) {
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Firebase Test'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(children: [
          ElevatedButton(
            onPressed: () {
              print("Firebase started");
            },
            child: const Text('Firebase başlasın'),
          ),
          ElevatedButton(
            onPressed: () {
              print("Bilgi Giriş Sayfası açılıyor.");
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return const InfoPage();
                  },
                ),
              );
            },
            child: const Text("Bilgi Giriş Sayfası"),
          )
        ]),
      ),
    );
  }
}
