import 'package:flutter/material.dart';

class MoviePage extends StatelessWidget {
  final String title;
  final String image;
  const MoviePage({super.key, required this.title, required this.image});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        // title: Text(title, style: TextStyle(color: Colors.white),),
        leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: Icon(Icons.arrow_back),
            color: Colors.white),
      ),
      body: Container(
        height: double.maxFinite,
        decoration: BoxDecoration(border: Border.all()),
        child: Column(
          children: [
            Container(
                height: 600,
                width: double.maxFinite,
                //decoration:BoxDecoration(border: Border.all(color: Colors.white)),
                child: Image.asset(
                  image,
                )),
            Column(
              children: [
                Row(
                  children: [
                    Image.asset('assets/images/netflix_logo.png', width: 25,),
                    Text('Pelicula',style: TextStyle(color: Colors.white),)
                  ],
                ),
                Text(title, style: TextStyle(color: Colors.white, fontSize: 22,)),
                TextButton(
                  onPressed: () {},
                  child: ElevatedButton.icon(
                      onPressed: () {},
                      icon: const Icon(Icons.play_circle_outline_outlined),
                      label: Text('Play')),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
