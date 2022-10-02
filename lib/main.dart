import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:practica1/pages/Home/home.dart';

import 'pages/Favorites/favorites.dart';
import 'pages/Home/bloc/listen_bloc.dart';
import 'pages/Song/song.dart';
import 'providers/favorites_provider.dart';
import 'package:provider/provider.dart';

//import homepage

void main() {
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => ListenBloc(),
        ),
      ],
      child: ChangeNotifierProvider(
        create: (context) => FavoriteSongs(),
        child: MyApp(),
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      darkTheme: ThemeData.dark(),
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      initialRoute: 'home',
      routes: {
        'home': (context) => HomePage(),
        'song': (context) => SongPage(),
        'favorites': (context) => FavoritesPage(),
      },
    );
  }
}
