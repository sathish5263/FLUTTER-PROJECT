import 'package:flutter/material.dart';
import 'home_page.dart';

class Authpage extends StatefulWidget {
  const Authpage({Key? key}) : super(key: key);

  @override
  State<Authpage> createState() => _AuthpageState();
}

class _AuthpageState extends State<Authpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 140, 53, 212),
        body: Column(children: [
          const Padding(
            padding: EdgeInsets.fromLTRB(60, 90, 70, 10),
            child: Text('Namaste!',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 35)),
          ),
          const SizedBox(height: 20),
          const Padding(
            padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: Text('Lets take delicious food',
                style: TextStyle(color: Colors.white, fontSize: 16)),
          ),
          const SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 230, 0),
          ),
          const SizedBox(height: 110),
          Container(
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(90, 0, 80, 0),
              child: TextButton(
                  onPressed: () => {},
                  child: const Text(
                    "Sign in  ",
                    style: TextStyle(
                        color: Color.fromARGB(199, 22, 49, 43),
                        fontWeight: FontWeight.bold,
                        fontSize: 14),
                  )),
            ),
          ),
          const SizedBox(height: 20),
          Container(
            decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.white,
                ),
                borderRadius: const BorderRadius.all(Radius.circular(10))),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(60, 0, 50, 0),
              child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const HomePage()),
                    );
                  },
                  child: const Text(
                    "External users",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 14),
                  )),
            ),
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(140, 0, 0, 0),
              ),
              //  const Icon(Icons.question_mark_outlined),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: TextButton(
                    onPressed: () => {},
                    child: const Text(
                      " Log-in problem ?",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 14),
                    )),
              ),
            ],
          )
        ]));
  }
}
