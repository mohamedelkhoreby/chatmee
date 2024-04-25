import 'package:flutter/material.dart';
import '../widgets/my_button.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  WelcomeScreenState createState() => WelcomeScreenState();
}

class WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Column(
              children: [
                SizedBox(
                  height: 180,
                  child: Image.asset('assets/images/logo.png'),
                ),
                const Text(
                  'MessageMe',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w900,
                    color: Color(0xff2e386b),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            MyButton(
              color: Colors.yellow[900]!,
              title: 'Sign in',
              onPressed: () {
                setState(() {
                  Navigator.pushNamed(context, 'signin_screen');
                });
              },
            ),
            MyButton(
              color: Colors.blue[800]!,
              title: 'register',
              onPressed: () {
                setState(() {
                  Navigator.pushNamed(context, 'registration_screen');
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
