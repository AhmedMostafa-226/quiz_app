import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:task_4/screens/login_screen.dart';
import 'package:task_4/utils/icons.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(backgroundOfHome), fit: BoxFit.cover)),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.end,
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.3),
            Image.asset(quizIcon),
            Center(
              child: Text(
                'ITI Quiz app',
                style: TextStyle(
                  color: Color.fromARGB(255, 248, 248, 3),
                  fontFamily: 'elsayed',
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Center(
              child: Text('we are creative , enjoy with app',
                  style: TextStyle(
                    color: Colors.white,
                  )),
            ),
            Spacer(),
            SizedBox(
                width: double.infinity,
                child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push<void>(
                          context,
                          MaterialPageRoute<void>(
                            builder: (BuildContext context) => LoginScreen(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            Color.fromARGB(255, 0, 234, 35), // Background color
                        foregroundColor: Colors.white, // Text color
                        shape: LinearBorder(),
                      ),
                      child: Text("Start"),
                    ))),
          ],
        ),
      ),
    );
  }
}
