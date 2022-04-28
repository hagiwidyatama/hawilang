import 'dart:async';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hawilang',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LauncherPage(),
      routes: <String, WidgetBuilder>{
        //'/login': (BuildContext context) => new LoginPage(),
        '/landing': (BuildContext context) => const LandingPage(),
      },
    );
  }
}

class LauncherPage extends StatefulWidget {
  const LauncherPage({Key? key}) : super(key: key);

  @override
  State<LauncherPage> createState() => _LauncherPageState();
}

class _LauncherPageState extends State<LauncherPage> {
@override
  void initState() {
    super.initState();
    startLaunching();
  }
  
  startLaunching() async {
    var duration = const Duration(seconds: 3);
    Timer(duration, () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (BuildContext context) => const LandingPage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
          color: Colors.white,
          child: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const <Widget>[
                  Text('Launcher'),
                ]),
          )),
    ));
  }
}

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int _bottomNavCurrentIndex = 0;
  final List<Widget> _container = [
    const Beranda(),
    const Produk(),
    const Pijat(),
    const Akun()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _container[_bottomNavCurrentIndex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          onTap: (index) {
            setState(() {
              _bottomNavCurrentIndex = index;
            });
          },
          currentIndex: _bottomNavCurrentIndex,
          items: const [
            BottomNavigationBarItem(
              activeIcon: Icon(
                Icons.home,
                color: Colors.indigo,
              ),
              icon: Icon(
                Icons.home_outlined,
                color: Colors.grey,
              ),
              label: 'Beranda',
            ),
            BottomNavigationBarItem(
              activeIcon: Icon(
                Icons.shopping_cart,
                color: Colors.indigo,
              ),
              icon: Icon(
                Icons.shopping_cart_outlined,
                color: Colors.grey,
              ),
              label: 'Produk',
            ),
            BottomNavigationBarItem(
              activeIcon: Icon(
                Icons.assignment,
                color: Colors.indigo,
              ),
              icon: Icon(
                Icons.assignment_outlined,
                color: Colors.grey,
              ),
              label: 'Pijat',
            ),
            BottomNavigationBarItem(
              activeIcon: Icon(
                Icons.people,
                color: Colors.indigo,
              ),
              icon: Icon(
                Icons.people_outlined,
                color: Colors.grey,
              ),
              label: 'Akun',
            )
          ],
        ));
  }
}

class Beranda extends StatefulWidget {
  const Beranda({Key? key}) : super(key: key);

  @override
  _BerandaState createState() => _BerandaState();
}

class _BerandaState extends State<Beranda> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
          color: Colors.white,
          child: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const <Widget>[
                  Text('Beranda'),
                ]),
          )),
    ));
  }
}

class Produk extends StatefulWidget {
  const Produk({Key? key}) : super(key: key);

  @override
  _ProdukState createState() => _ProdukState();
}

class _ProdukState extends State<Produk> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
          color: Colors.white,
          child: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const <Widget>[
                  Text('Produk'),
                ]),
          )),
    ));
  }
}

class Pijat extends StatefulWidget {
  const Pijat({Key? key}) : super(key: key);

  @override
  _PijatState createState() => _PijatState();
}

class _PijatState extends State<Pijat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
          color: Colors.white,
          child: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const <Widget>[
                  Text('Pijat'),
                ]),
          )),
    ));
  }
}

class Akun extends StatefulWidget {
  const Akun({Key? key}) : super(key: key);

  @override
  _AkunState createState() => _AkunState();
}

class _AkunState extends State<Akun> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
          color: Colors.white,
          child: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const <Widget>[
                  Text('Akun'),
                ]),
          )),
    ));
  }
}
