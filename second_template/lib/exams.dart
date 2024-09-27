import 'package:flutter/material.dart';
import 'package:second_template/teacher.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

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
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  height: 230,
                  decoration: BoxDecoration(
                    color: const Color(0xff7382c2),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Basic Algebra",
                                style: TextStyle(
                                    fontSize: 19, fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(height: 6),
                              const Text(
                                "Math 101",
                                style: TextStyle(fontSize: 15),
                              ),
                              const SizedBox(height: 22),
                              const Text(
                                "Today 2024",
                                style: TextStyle(fontSize: 15),
                              ),
                              const Text(
                                "Class 12A",
                                style: TextStyle(fontSize: 15),
                              ),
                              const SizedBox(height: 20),
                              TextButton(
                                onPressed: () {},
                                child: Text('SignUp'),
                                style: TextButton.styleFrom(
                                    backgroundColor: const Color.fromARGB(
                                        255, 210, 214, 228),
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 30, vertical: 10),
                                    textStyle: const TextStyle(
                                      fontSize: 18,
                                    )),
                              ),
                            ],
                          ),
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.asset(
                            'assets/book2.jpg',
                            width: MediaQuery.of(context).size.width * 0.4,
                            height: MediaQuery.of(context).size.width * 0.5,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              // second box
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Container(
                  height: 230, // Adjusted height for better button layout
                  decoration: BoxDecoration(
                    color:const Color(0xfff9af2a),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Sift In Produchtions",
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(height: 6),
                              const Text(
                                "Poisbility",
                                style: TextStyle(fontSize: 15, fontWeight:FontWeight.bold),
                              ),
                              const SizedBox(height: 20),
                              const Text(
                                "Software Engineering",
                                style: TextStyle(fontSize: 15),
                              ),
                              const Text(
                                "Online",
                                style: TextStyle(fontSize: 15),
                              ),
                              const SizedBox(height: 25),
                              TextButton(
                                onPressed: () {},
                                child: Text('SignUp'),
                                style: TextButton.styleFrom(
                                    backgroundColor: const Color.fromARGB(
                                        255, 210, 214, 228),
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 30, vertical: 10),
                                    textStyle: const TextStyle(
                                      fontSize: 18,
                                    )),
                              ),
                            ],
                          ),
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.asset(
                            'assets/book2.jpg',
                            width: MediaQuery.of(context).size.width * 0.4,
                            height: MediaQuery.of(context).size.width * 0.5,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(25),
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=> TeacherPages()));
          },
          child: Text(
            "SignUp for another exame",
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
