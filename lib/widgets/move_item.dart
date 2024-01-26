import 'package:flutter/material.dart';

class movesItem extends StatelessWidget {
final List listMovies;
  const movesItem({super.key, required this.listMovies});

  @override
  Widget build(BuildContext context) {
    return Container(
                margin: EdgeInsets.only(top: 20, bottom: 20),
                height: 200,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: listMovies.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      margin: EdgeInsets.symmetric(
                          horizontal: 5.0), // Margen entre cada imagen
                      child: Image.asset(
                        listMovies[index],
                        fit: BoxFit.cover,
                      ),
                    );
                  },
                ),
              );
  }
}