import 'package:flutter/material.dart';
import 'package:flutter_app_one/widgets/find_movies.dart';
import 'package:flutter_app_one/widgets/list_assets.dart';
import 'package:flutter_app_one/widgets/move_item.dart';
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
              onPressed: () {
                showDialog(
                  context: context, 
                  builder: (context) => FindMovies(),
                );
              },
            ),            
            IconButton(
              icon: const Icon(Icons.search, color: Colors.white),
              onPressed: () {                
                showAdaptiveDialog(
                  context: context,
                  builder: ((context) {
                    return AlertDialog(
                      
                      content: Form(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            
                        children: [                        
                          TextFormField(
                            decoration: InputDecoration(
                              hintText: 'Ingresa el nombre de la pelicula',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)
                              )
                            ),
                          ),
                          SingleChildScrollView( 
                                                       
                            child: Column(
                              children: [
                                Container(
                                  child: Text("data"),
                                ),
                                Container(
                                  child: Text("data2"),
                                ),
                                Container(
                                  child: Text("data3"),
                                ),
                              ],
                            ),
                          ),
                        ],
                      )),
                    );
                  }),
                );
              },
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
              const TitleSection(
                  title: "Populares en Netflix", color: Colors.white),
              movesItem(listMovies: assetPopular),
              const TitleSection(title: "Ver nuevamente", color: Colors.white),
              movesItem(listMovies: assetVistos)
            ],
          ),
        ));
  }
}
