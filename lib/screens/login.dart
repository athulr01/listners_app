import 'package:flutter/material.dart';
import 'package:friendly_talks/screens/home.dart';
// import 'package:friendly_talks/screens/otppage.dart';
// import 'package:friendly_talks/screens/register.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.pink, Colors.white],
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 80),
              Flexible(
                child: Image.asset('assets/images/friendly.png',
                    height: 500, width: 500),
              ),
              const SizedBox(height: 15),
              const Text(
                'Welcome!',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
              const SizedBox(height: 30),
              Container(
                height: 570,
                width: 325,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    const Text(
                      'Hello',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'Please Login to your account',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey,
                      ),
                    ),
                    const SizedBox(height: 20),
                    // const SizedBox(
                    //   width: 250,
                    //   child: TextField(
                    //     decoration: InputDecoration(
                    //       labelText: 'Country',
                    //       suffixIcon: Icon(Icons.location_searching_rounded),
                    //       labelStyle: TextStyle(fontSize: 17),
                    //     ),
                    //   ),
                    // ),
                    const SizedBox(height: 20),
                    const SizedBox(
                      width: 250,
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: 'Mobile Number',
                          suffixIcon: Icon(Icons.phone_callback),
                          labelStyle: TextStyle(fontSize: 17),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    const SizedBox(
                      width: 250,
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: 'Password',
                          suffixIcon: Icon(Icons.remove_red_eye),
                          labelStyle: TextStyle(fontSize: 17),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) => const Home(
                              languages: [],
                              language: [],
                            ),
                          ),
                        );
                      },
                      child: Container(
                        alignment: Alignment.center,
                        height: 50,
                        width: 250,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          gradient: const LinearGradient(
                            colors: [Colors.pink, Colors.pink, Colors.pink],
                          ),
                        ),
                        child: const Text(
                          'PROCEED SECURELY',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                    ),
                    // const SizedBox(height: 10), // Removed 'const' from SizedBox
                    // GestureDetector(
                    //   onTap: () {
                    //     Navigator.pushReplacement(
                    //       context,
                    //       MaterialPageRoute(
                    //         builder: (BuildContext context) => const Otppage(),
                    //       ),
                    //     );
                    //   },
                    //   child: const Padding(
                    //     padding: EdgeInsets.fromLTRB(20, 20, 40, 20),
                    //     child: Row(
                    //       mainAxisAlignment: MainAxisAlignment.end,
                    //       children: [
                    //         Text(
                    //           'Login using OTP',
                    //           style: TextStyle(
                    //             color: Colors.pinkAccent,
                    //           ),
                    //         ),
                    //       ],
                    //     ),
                    //   ),
                    // ),
                    // GestureDetector(
                    //   onTap: () {
                    //     Navigator.pushReplacement(
                    //       context,
                    //       MaterialPageRoute(
                    //         builder: (BuildContext context) => const Register(),
                    //       ),
                    //     );
                    //   },
                    //   child: const Padding(
                    //     padding: EdgeInsets.fromLTRB(20, 20, 40, 20),
                    //     child: Row(
                    //       mainAxisAlignment: MainAxisAlignment.end,
                    //       children: [
                    //         Text(
                    //           "Don't have an Account? Register Here.",
                    //           style: TextStyle(
                    //             color: Colors.pinkAccent,
                    //           ),
                    //         ),
                    //       ],
                    //     ),
                    //   ),
                    // ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
