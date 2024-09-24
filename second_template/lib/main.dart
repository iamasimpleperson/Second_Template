import 'package:flutter/material.dart';
import 'package:second_template/exams.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Rean App',
      home: MainApp());
  }
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.5,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/book.png'),
                  fit: BoxFit.contain,
                ),
              ),
            ),
            const Expanded(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "StudyPal",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff7382c2),
                      ),
                    ),
                    Text(
                      "Your package guide",
                      style: TextStyle(fontSize: 16),
                    ),
                    Text(
                      "for school",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(25),
          child: ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const DetailPage()),
              );
            },
            child: Text(
              "Begin",
              style: TextStyle(
              fontSize: 18, color: Color.fromARGB(255, 255, 255, 255)),
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xff7382c2),
              minimumSize: const Size.fromHeight(50),
            ),
          ),
        ),
    );
  }
}
