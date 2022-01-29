import 'package:flutter/material.dart';

class NavP extends StatefulWidget {
  const NavP({Key? key}) : super(key: key);

  @override
  _NavPState createState() => _NavPState();
}

class _NavPState extends State<NavP> {
 // int _selection = 0;
 /* final List _widgetOptions = [
    const Text(" "),
    const Text(" "),
    const Text(" "),
    const Text(" "),
    const Text(" "),
  ];

  void _onclick(int index) {
    setState(() {
      _selection = index;
    });
  }*/

  var note = 0;
  var note2 = 0;
  var note3 = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.white,
          title: const Text(
            '',
          ),
          leading: const Icon(Icons.drafts_sharp, size: 20, color: Colors.blue),
          actions: [
            IconButton(
                icon: const Icon(Icons.king_bed_sharp,
                    size: 20, color: Colors.black38),
                onPressed: () {
                  setState(() {
                    note += 1;
                  });
                }),
            IconButton(
              padding: const EdgeInsets.all(5.0),
              icon: const Icon(Icons.pin_drop, size: 20, color: Colors.black38),
              onPressed: () {
                setState(() {
                  note2 += 1;
                });
              },
            ),
            Text('$note2'),
            IconButton(
                icon: const Icon(
                  Icons.favorite_border_rounded,
                  size: 20,
                  color: Colors.red,
                ),
                onPressed: () {
                  setState(() {
                    note3 += 1;
                  });
                }),
            Text('$note3'),
          ]),
      body: const Center(
        child: Text('b'),//widgetOptions.elementAt(_selection),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.black38,
                size: 30,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.book_online_sharp,
                  color: Colors.black38, size: 30),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.pregnant_woman_sharp,
                  color: Colors.black38, size: 30),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.beenhere_sharp, color: Colors.black38, size: 30),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.pages, color: Colors.black38, size: 30),
              label: ''),
        ],
        /*currentIndex: _selection,
        onTap: _onclick,*/
      ),
    );
  }
}
