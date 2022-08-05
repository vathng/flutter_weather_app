import 'package:flutter_weather_app/models/weather_model.dart';

abstract class WeatherState{}

class WeatherInitial extends WeatherState{}

class WeatherLoading extends WeatherState{}

class WeatherLoaded extends WeatherState{
  final WeatherModel weatherModel;

  WeatherLoaded({required this.weatherModel});
}

class WeatherError extends WeatherState{
  final String errorMessages;

  WeatherError({required this.errorMessages});
}