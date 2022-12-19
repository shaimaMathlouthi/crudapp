import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:my_crud_app/view/ui/home/home.dart';

class SplachScreen extends StatefulWidget {
  const SplachScreen({Key? key}) : super(key: key);

  @override
  State<SplachScreen> createState() => _SplachScreenState();
}

class _SplachScreenState extends State<SplachScreen> {
  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async {
    await Future.delayed(const Duration(milliseconds: 3000), () {});
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => const HomePage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Image.asset(
                "assets/images/player.png",
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            const Text(
              "My football team",
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(121, 62, 168, 243)),
            ),
            const SizedBox(
              height: 8,
            ),
            const Text(
              "manage your team easily",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Color.fromARGB(121, 177, 177, 177)),
            ),
          ],
        ),
      ),
    );
  }
}
