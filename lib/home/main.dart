import 'package:flutter/material.dart';
import 'package:flutter_app_one/widgets/iconButton.dart';
import 'package:flutter_app_one/widgets/listAssets.dart';
import 'package:flutter_app_one/widgets/moveItem.dart';
import 'package:flutter_app_one/widgets/title.dart';

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
            const IconWidgetItem(
                iconItem: Icons.access_time_sharp, colorItem: Colors.white),
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
              TitleSection(title: "Populares en Netflix", color: Colors.white),
              movesItem(listMovies: assetPopular),
              TitleSection(title: "Ver nuevamente", color: Colors.white),
              movesItem(listMovies: assetVistos)
            ],
          ),
        ));
  }

  void onPressed() {}
}
