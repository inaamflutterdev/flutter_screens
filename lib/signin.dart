import 'package:flutter/material.dart';
import 'package:flutter_screens/signin2.dart';
// import 'package:proste_bezier_curve/proste_bezier_curve.dart';

class SecPage extends StatelessWidget {
  const SecPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    // double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          ClipPath(
            clipper: ClipperStack(),
            child: Container(
              padding: const EdgeInsets.fromLTRB(0, 100, 0, 0),
              width: 400,
              height: 280,
              color: Colors.blueAccent,
              child: const Text(
                'SIGN IN',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.normal,
                    color: Colors.white),
              ),
            ),
          ),
          const SizedBox(
            height: 30.0,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 350,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade300,
                      spreadRadius: 2,
                      blurRadius: 2,
                      offset: const Offset(0, 2), // changes position of shadow
                    ),
                  ],
                  color: Colors.grey.shade200,
                ),
                height: 60,
                alignment: Alignment.center,
                padding: const EdgeInsets.symmetric(
                  horizontal: 40,
                ),
                child: const TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      labelText: 'youremail@gmail.com',
                      icon: Icon(
                        Icons.email_outlined,
                        color: Colors.blueAccent,
                      ),
                      labelStyle: TextStyle(
                        color: Colors.blueAccent,
                      )),
                  keyboardType: TextInputType.emailAddress,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: 350,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade300,
                      spreadRadius: 2,
                      blurRadius: 2,
                      offset: const Offset(0, 2), // changes position of shadow
                    ),
                  ],
                  color: Colors.grey.shade200,
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 40,
                ),
                child: const TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      icon: Icon(
                        Icons.lock_outline,
                        color: Colors.grey,
                      ),
                      labelText: 'Password',
                      labelStyle: TextStyle(
                        color: Colors.grey,
                      )),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            color: Colors.white,
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 50),
            width: 200,
            // color: Colors.red,
            child: TextButton(
              style: const ButtonStyle(),
              onPressed: () {
                //forgot password screen
              },
              child: const Text(
                'Forgot Password',
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ),
          ),
          Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              height: 55,
              width: 350,
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: const StadiumBorder(), elevation: 5),
                child: const Text(
                  'SIGN IN',
                  style: TextStyle(fontSize: 20),
                ),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const ThirdPage()));
                  print(emailController.text);
                  print(passwordController.text);
                },
              )),
          Row(
            children: [
              Container(
                // color: Colors.blueAccent,

                padding: const EdgeInsets.fromLTRB(80, 30, 5, 0),
                child: const Text(
                  "Don't have an account?",
                  style: TextStyle(fontSize: 17, color: Colors.grey),
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(0, 30, 5, 0),
                child: const Text(
                  'SIGN UP',
                  style: TextStyle(
                      fontSize: 17,
                      color: Colors.blueAccent,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 138.9,
          ),
          Container(
            height: 20,
            color: Colors.blue.shade200,
          ),
          Container(
            height: 20,
            color: Colors.blueAccent,
          ),
        ]));
  }
}

class ClipperStack extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    path.moveTo(0.0, 0.0);
    path.lineTo(0, size.height - 50);
    path.lineTo((size.width / 8), size.height - 10);

    path.lineTo(size.width / 4, size.height - 50);

    path.lineTo(size.width, size.height - 50);
    path.lineTo(size.width, size.height);

    path.lineTo((size.width), 00);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}
