import 'package:http/http.dart' as http;
import 'package:flutter_weather_app/models/weather_model.dart';

class WeatherService{
  Future<WeatherModel> fetchWeatherInformation(String cityName)async{
    const String apiKey= '630dcfa0ed1002b7bf8c20fa86d744e4';

    final Uri url = Uri(
      scheme: 'http',
      host: 'api.openweathermap.org',
      path: 'data/2.5/weather',
      queryParameters: { 'q': cityName, 'appid': apiKey, 'units': 'metric'},
    );

    http.Response response = await http.get(url);

    if(response.statusCode == 200){
      return WeatherModel.fromJson(response.body);
    } else {
      throw Exception ('Failed to load weather information.');
    }



  }
}