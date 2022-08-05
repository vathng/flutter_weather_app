import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_weather_app/pages/home_page.dart';
import 'package:flutter_weather_app/states/weather_cubit.dart';

void main() {
  runApp(BlocProvider(create: (context) => WeatherCubit(),
  child: MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.purple,
      ),
      home: const Homepage(),
    );
  }
}

