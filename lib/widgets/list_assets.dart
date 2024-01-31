import 'package:flutter/material.dart';
import 'package:flutter_app_one/models/movie_model.dart';

List<String> assetPopular = [
  'assets/images/alice.jpg',
  'assets/images/avengers.jpg',
  'assets/images/back2.jpg',
  'assets/images/black.jpg',
  'assets/images/brooklin.jpg',
  'assets/images/dune.jpg',
  'assets/images/how.jpg',
  'assets/images/lord.jpg',
  'assets/images/snyder.jpg',
];

List<String> assetVistos = [
  'assets/images/avengers.jpg',
  'assets/images/cosmos.jpg',
  'assets/images/dune.jpg',
  'assets/images/breaking_bad.jpeg',
  'assets/images/stranger.jpg',
  'assets/images/alice.jpg',
];

List<MovieModel> allMovies = [
  MovieModel('Alice', 'assets/images/alice.jpg'), 
  MovieModel('Avengers', 'assets/images/avengers.jpg'), 
  MovieModel('Back Future II', 'assets/images/back2.jpg'), 
  MovieModel('Black Mirror', 'assets/images/black.jpg'), 
  MovieModel('Breaking Bad', 'assets/images/breaking_bad.jpeg'), 
  MovieModel('Brooklyn Nine-Nine', 'assets/images/brooklin.jpg'), 
  MovieModel('Cosmos', 'assets/images/cosmos.jpg'), 
  MovieModel('Dune', 'assets/images/dune.jpg'), 
  MovieModel('How', 'assets/images/how.jpg'), 
  MovieModel('Lord of the Rings', 'assets/images/lord.jpg'), 
  MovieModel("Grey's and Anatomy", 'assets/images/main_banner.jpg'),
  MovieModel('Snyder', 'assets/images/snyder.jpg'),
  MovieModel('Stranger', 'assets/images/stranger.jpg'),
];