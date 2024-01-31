import 'package:flutter/material.dart';
import 'package:flutter_app_one/models/movie_model.dart';
import 'package:flutter_app_one/pages/movie_page.dart';
import 'package:flutter_app_one/widgets/list_assets.dart';

class FindMovies extends StatefulWidget {
  const FindMovies({super.key});

  @override
  State<FindMovies> createState() => _FindMoviesState();
}

class _FindMoviesState extends State<FindMovies> {
  final TextEditingController _controllerFindMovie = TextEditingController();
  List<MovieModel> findMovies = [];

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Container(
        width: double.maxFinite,
        height: 300,
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            TextFormField(
              controller: _controllerFindMovie,
              decoration: InputDecoration(
                  hintText: 'Ingresa el nombre de la pelicula',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10))),
              onChanged: (value) {
                setState(() {
                  //_controllerFindMovie.text = value;
                  if (value.isEmpty) {
                    findMovies = [];
                  } else {
                    findMovies = allMovies
                        .where((element) => element.title
                            .toLowerCase()
                            .contains(value.toLowerCase()))
                        .toList();
                  }

                  //allAsset.where((element) => element.contains(_controllerFindMovie.text));
                });
              },
              validator: ((value) {
                if (value == null) {
                  return 'Escribe algo...';
                }
                return null;
              }),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: findMovies.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    onTap: () {
                      // MoviePage(title: findMovies[index].title);
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MoviePage(
                                  title: findMovies[index].title,
                                  image: findMovies[index].imageMovie,
                                )),
                      );
                    },
                    leading: Container(
                        margin: EdgeInsets.only(bottom: 10),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 1)),
                        child: Image.asset(findMovies[index].imageMovie)),
                    title: Text(findMovies[index].title),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      actions: [
        TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('Cancelar'))
      ],
    );
  }
}
