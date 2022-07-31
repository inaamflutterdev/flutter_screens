import 'package:flutter/material.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 800,
                height: 200,
                child: Stack(
                  children: [
                    CustomPaint(
                      size: const Size(800,
                          200), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
                      painter: RPSCustomPainter(),
                    ),
                  ],
                ),
              ),
              Container(
                height: 480,
                width: 400,

                alignment: Alignment.center,
                // padding: EdgeInsets.only(left: 25),

                child: CustomPaint(
                  size: const Size(800,
                      450), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
                  painter: RPSCustomPainter2(),
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.fromLTRB(65, 120, 0, 0),
                        width: 400,
                        child: const Text(
                          'Sign In',
                          style: TextStyle(
                              fontSize: 35, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        width: 320,
                        padding: const EdgeInsets.fromLTRB(30, 15, 30, 10),
                        child: TextField(
                          obscureText: false,
                          controller: emailController,
                          decoration: const InputDecoration(
                              icon: Icon(
                                Icons.email_outlined,
                                color: Colors.green,
                              ),
                              labelText: 'youremail@gmail.com',
                              labelStyle: TextStyle(
                                color: Colors.black87,
                                fontSize: 20,
                              )),
                        ),
                      ),
                      Container(
                        width: 320,
                        padding: const EdgeInsets.fromLTRB(30, 5, 30, 10),
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
                        padding: const EdgeInsets.fromLTRB(50, 0, 30, 10),
                        alignment: AlignmentDirectional.center,

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
                            'Forgot Password?',
                            style: TextStyle(
                              color: Colors.green,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ),
                      Column(
                        children: [
                          Positioned(
                            top: 50,
                            child: Container(
                              padding: const EdgeInsets.only(top: 16),
                              child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 22.0, vertical: 22.0),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(40.0)),
                                    primary: Colors.green),
                                child: const Icon(
                                  Icons.arrow_forward,
                                  size: 40,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Row(
                children: [
                  Container(
                    // color: Colors.blueAccent,

                    padding: const EdgeInsets.fromLTRB(70, 70, 5, 0),
                    child: const Text(
                      "Don't have an account?",
                      style: TextStyle(fontSize: 17, color: Colors.grey),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(0, 70, 5, 0),
                    child: const Text(
                      'SIGN UP',
                      style: TextStyle(
                          fontSize: 17,
                          color: Colors.green,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0 = Paint()
      ..color = const Color.fromARGB(255, 11, 134, 33)
      ..style = PaintingStyle.fill
      ..strokeWidth = 4.739999771118164;

    Path path0 = Path();
    path0.moveTo(0, size.height * 0.7715000);
    path0.cubicTo(
        size.width * 0.0740125,
        size.height * 0.7744333,
        size.width * 0.1200750,
        size.height * 0.7666000,
        size.width * 0.1728250,
        size.height * 0.6852667);
    path0.cubicTo(
        size.width * 0.2090750,
        size.height * 0.6256667,
        size.width * 0.2557000,
        size.height * 0.5247000,
        size.width * 0.3466750,
        size.height * 0.6063333);
    path0.cubicTo(
        size.width * 0.4020000,
        size.height * 0.6734333,
        size.width * 0.4214750,
        size.height * 0.7436333,
        size.width * 0.5035875,
        size.height * 0.8715667);
    path0.cubicTo(
        size.width * 0.5744750,
        size.height * 0.9593333,
        size.width * 0.6104875,
        size.height * 0.9210667,
        size.width * 0.6655375,
        size.height * 0.8607000);
    path0.cubicTo(
        size.width * 0.7133375,
        size.height * 0.7481333,
        size.width * 0.7349750,
        size.height * 0.7085000,
        size.width * 0.7471875,
        size.height * 0.5186333);
    path0.cubicTo(
        size.width * 0.7545125,
        size.height * 0.3698000,
        size.width * 0.7525500,
        size.height * 0.2384667,
        size.width * 0.7318875,
        size.height * 0.0953333);
    path0.quadraticBezierTo(size.width * 0.7191000, size.height * 0.0542000,
        size.width * 0.7150000, 0);
    path0.lineTo(0, 0);
    path0.lineTo(0, size.height * 0.3805000);
    path0.quadraticBezierTo(size.width * -0.0029750, size.height * 0.5751000, 0,
        size.height * 0.7715000);
    path0.close();

    canvas.drawPath(path0, paint0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class RPSCustomPainter2 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0 = Paint()
      ..color = const Color.fromARGB(255, 233, 235, 238)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1.0;

    Path path0 = Path();
    path0.moveTo(size.width * 0.1128125, size.height * 0.2320833);
    path0.cubicTo(
        size.width * 0.1121875,
        size.height * 0.1667667,
        size.width * 0.1246875,
        size.height * 0.1120833,
        size.width * 0.2156250,
        size.height * 0.1179167);
    path0.cubicTo(
        size.width * 0.3784375,
        size.height * 0.1550000,
        size.width * 0.7321875,
        size.height * 0.2583333,
        size.width * 0.8340625,
        size.height * 0.2850000);
    path0.cubicTo(
        size.width * 0.8959250,
        size.height * 0.3111167,
        size.width * 0.8876625,
        size.height * 0.3769500,
        size.width * 0.8872750,
        size.height * 0.4387167);
    path0.cubicTo(
        size.width * 0.8876875,
        size.height * 0.6153500,
        size.width * 0.8896875,
        size.height * 0.5733333,
        size.width * 0.8881250,
        size.height * 0.8737500);
    path0.quadraticBezierTo(size.width * 0.8821875, size.height * 0.9425000,
        size.width * 0.8253125, size.height * 0.9591667);
    path0.lineTo(size.width * 0.1753125, size.height * 0.9600000);
    path0.quadraticBezierTo(size.width * 0.1168750, size.height * 0.9425000,
        size.width * 0.1140625, size.height * 0.8783333);
    path0.quadraticBezierTo(size.width * 0.1137500, size.height * 0.6895833,
        size.width * 0.1128125, size.height * 0.2337500);
    path0.quadraticBezierTo(size.width * 0.1112500, size.height * 0.2916667,
        size.width * 0.1128125, size.height * 0.2320833);
    path0.close();

    canvas.drawPath(path0, paint0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
