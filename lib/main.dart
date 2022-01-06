import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GUESS THE NUMBER',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GUESS THE NUMBER'),
      ),
      body: Container(
        // เทียบได้กับแท็ก <div> ของ HTML
        decoration: BoxDecoration(
            color: Colors.greenAccent.shade100,
            border: Border.all(width: 20.0, color: Colors.lightBlueAccent.shade100),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.5),
                offset: const Offset(2.0, 5.0),
                blurRadius: 5.0,
                spreadRadius: 2.0,
              ),
            ]),
        //alignment: Alignment.center,
        child: Center(
          child: Column(
            //mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            //crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      right: 10.0,
                    ),
                    child: Image.asset('assets/images/guess_logo.png',
                        width: 100.0),
                  ),
                  Column(
                    children: [
                      Text(
                        'GUESS',
                        style:
                        TextStyle(fontSize: 30.0, color: Color(0x800000FF)),
                      ),
                      Text(
                        'THE NUMBER',
                        style:
                        TextStyle(fontSize: 15.0, color: Color(0x800000FF)),
                      ),
                    ],
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 10.0,
                  bottom: 30.0,
                  left: 60.0,
                  right: 60.0,
                ),
                child: TextField(),
              ),
              ElevatedButton(
                child: Text('GUESS'),
                onPressed: () {
                  // โค้ดที่จะทำงานเมื่อกดปุ่ม
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
