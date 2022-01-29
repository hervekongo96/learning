import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
              width: double.infinity,
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10.0),
                    child: Image.asset(
                      'images/images.jpg',
                      width: 200.0,
                      height: 200.0,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 10.0, bottom: 15.0),
                    child: Text(
                      'ça fait plaisir de te \n revoir ! ',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 30.0,
                        fontFamily: 'FlamanteRoma',
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(bottom: 20.0),
                    child: Text(
                      'Et si tu révisais un peu ton \n anglais ? ',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 20.0,
                        fontFamily: 'FlamanteRoma',
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 100,
                  ),
                  FlatButton(
                    onPressed: () {
                      Navigator.pop(context);
                      Navigator.pushNamed(context, "/navigation");
                    },
                    child: const Text("COMMENCER A REVISER",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'FlamanteRoma',
                          fontSize: 20.0,
                        )),
                    color: Colors.blue,
                  )
                ],
              ))
        ],
      ),
    );
  }
}
