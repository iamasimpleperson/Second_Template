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
            "List of Teacher",
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
                border: Border.all(
                  color: Colors.black,
                  width: 2.0,
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 30),
            buildTeacherCard('assets/Bott.jpg', 'Mr. Bott'),
            buildTeacherCard('assets/Say.png', 'Ms. Rita'),
            buildTeacherCard('assets/Rita.png', 'Ms. Kolab'),
            buildTeacherCard('assets/sathya.jpg', 'Mr. Handsome'),
            buildTeacherCard('assets/nith.png', 'Mr. Richo'),
            buildTeacherCard('assets/R.jpg', 'Ms. Romdoul'),
          ],
        ),
      ),
    );
  }


  Widget buildTeacherCard(String imagePath, String teacherName) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
      child: Container(
        height: 80,
        decoration: BoxDecoration(
          border: Border.all(
            color: const Color.fromARGB(255, 0, 0, 0),
            width: 1.0,
          ),
          color: const Color.fromARGB(255, 255, 255, 255),
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(40.0), // Rounded corners
                child: Image.asset(
                  imagePath,
                  width: 50, 
                  height: 50,
                  fit: BoxFit.contain,
                ),
              ),
              Text(
                teacherName,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(width: 40),
              Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.call),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: const Icon(Icons.message),
                    onPressed: () {},
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
