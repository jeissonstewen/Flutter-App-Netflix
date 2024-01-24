import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Netflix",
      home: Inicio(),
    );
  }
}

class Inicio extends StatefulWidget {
  const Inicio({super.key});

  @override
  State<Inicio> createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          toolbarHeight: 50,
          leading: Image.asset('assets/images/netflix_logo.png'),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.cast_sharp, color: Colors.white),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.search, color: Colors.white),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.person, color: Colors.white),
              onPressed: () {},
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Image.asset('assets/images/main_banner.jpg'),
              Container(
                width: double.maxFinite,
                margin: EdgeInsets.only(top: 40),
                child: Text(
                  'Populares en Netflix',
                  textAlign: TextAlign.start,
                  style: TextStyle(color: Colors.white, fontSize: 22),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20, bottom: 20),
                child: SizedBox(
                  height: 200, // Altura deseada para la lista horizontal
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Image.asset('assets/images/alice.jpg'),
                      Image.asset('assets/images/avengers.jpg'),
                      Image.asset('assets/images/back2.jpg'),
                      Image.asset('assets/images/black.jpg'),
                      Image.asset('assets/images/cosmos.jpg'),
                      Image.asset('assets/images/dune.jpg'),
                    ],
                  ),
                ),
              ),
              Container(
                width: double.maxFinite,
                margin: EdgeInsets.only(top: 40),
                child: Text(
                  'Ver nuevamente',
                  textAlign: TextAlign.start,
                  style: TextStyle(color: Colors.white, fontSize: 22),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20, bottom: 20),
                child: SizedBox(
                  height: 200, // Altura deseada para la lista horizontal
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Image.asset('assets/images/how.jpg'),
                      Image.asset('assets/images/lord.jpg'),
                      Image.asset('assets/images/snyder.jpg'),
                      Image.asset('assets/images/stranger.jpg'),
                      Image.asset('assets/images/cosmos.jpg'),
                      Image.asset('assets/images/dune.jpg'),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }

  void onPressed() {}
}
