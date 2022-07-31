import 'package:flutter/material.dart';
import 'package:flutter_screens/signin.dart';
import 'package:proste_bezier_curve/proste_bezier_curve.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

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
      debugShowCheckedModeBanner: false,
      title: 'First App',
      theme: ThemeData(
          // textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextcolor),
          // visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        body: StreamBuilder<User?>(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return SecPage();
            } else {
              return MyHomePage();
            }
          },
        ),
      );
}

class _MyHomePageState extends State<MyHomePage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            color: Colors.white,
            child: ClipPath(
              clipper: ProsteThirdOrderBezierCurve(
                position: ClipPosition.bottom,
                list: [
                  ThirdOrderBezierCurveSection(
                    p1: const Offset(0, 0),
                    p2: const Offset(0, 200),
                    p3: Offset(screenWidth, 50),
                    p4: Offset(screenWidth, 200),
                  ),
                ],
              ),
              child: Container(
                height: 270,
                color: Colors.orangeAccent,
              ),
            ),
          ),
          Container(
              color: Colors.white,
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
              child: const Text(
                'Login',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 40),
              )),
          Container(
            color: Colors.white,
            // color: Colors.redAccent,
            padding: const EdgeInsets.fromLTRB(30, 30, 30, 10),
            child: TextField(
              obscureText: false,
              controller: emailController,
              decoration: const InputDecoration(
                  icon: Icon(
                    Icons.email_outlined,
                    color: Colors.orangeAccent,
                  ),
                  labelText: 'youremail@gmail.com',
                  labelStyle: TextStyle(
                    color: Colors.orangeAccent,
                  )),
            ),
          ),
          Container(
            color: Colors.white,
            padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
            child: TextField(
              obscureText: true,
              controller: passwordController,
              decoration: const InputDecoration(
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
          Container(
            color: Colors.white,
            alignment: AlignmentDirectional.centerEnd,
            padding: const EdgeInsets.fromLTRB(0, 0, 5, 40),
            width: MediaQuery.of(context).size.width,
            // color: Colors.red,
            child: TextButton(
              style: ButtonStyle(
                padding: MaterialStateProperty.all<EdgeInsets>(
                    const EdgeInsets.only(right: 30)),
              ),
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
              height: 55,
              width: 350,
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.orangeAccent,
                  shadowColor: Colors.orangeAccent,
                  elevation: 10,
                ),
                onPressed: signIn,
                child: const Text(
                  'LOGIN',
                  style: TextStyle(fontSize: 20),
                ),
              )),
          Row(
            children: [
              Container(
                // color: Colors.blueAccent,

                padding: const EdgeInsets.fromLTRB(80, 60, 5, 0),
                child: const Text(
                  "Don't have an account?",
                  style: TextStyle(fontSize: 17, color: Colors.grey),
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(0, 60, 5, 0),
                child: const Text(
                  'SIGN UP',
                  style: TextStyle(
                      fontSize: 17,
                      color: Color.fromARGB(255, 109, 108, 108),
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Future signIn() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: emailController.text.trim(),
      password: passwordController.text.trim(),
    );
  }
}
