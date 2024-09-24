import 'package:flutter/material.dart';

class TeacherPages extends StatelessWidget {
  const TeacherPages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff7382c2),
        title: const Center(
          child: Text(
            "Data",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_rounded),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color.fromARGB(255, 251, 0, 0),
                border: const Border(
                  left: BorderSide(width: 2),
                  top: BorderSide(width: 2),
                  right: BorderSide(width: 2),
                  bottom: BorderSide(width: 2),
                ),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  "assets/my_photo.jpg",
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
        toolbarHeight: 60.0,
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.greenAccent
                 
                ),
              )
            ],
          ),
        ),
      ),
      
    );
  }
}
