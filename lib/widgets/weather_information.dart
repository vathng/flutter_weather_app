import 'package:flutter/material.dart';
import 'package:flutter_weather_app/models/weather_model.dart';

class WeatherInformation extends StatelessWidget {
  const WeatherInformation({required this.weatherModel, Key? key}) : super(key: key);

  final WeatherModel weatherModel;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width:400,
      child: Card(
        child: Column(children: [
         Image(
           image: NetworkImage(
             "http://openweathermap.org/img/wn/${weatherModel.weather.first.icon}.png",scale: 0.5
           )
         ),
        const SizedBox(height: 10),
        Text('${weatherModel.main.temp}°C', style: TextStyle(fontSize: 65),),
        const SizedBox(height: 10),
        Text('${weatherModel.name}', style: TextStyle(fontSize: 35),),
        const SizedBox(height: 10),
        Text(' Description: ${weatherModel.weather.first.description}', style: TextStyle(fontSize: 15),),
          const SizedBox(height: 10),
          Text(' Minimum Temperature: ${weatherModel.main.tempMin}°C', style: TextStyle(fontSize: 15),),
          const SizedBox(height: 10),
          Text(' Maximum Temperature: ${weatherModel.main.tempMax}°C', style: TextStyle(fontSize: 15),),
          Text('humidity: ${weatherModel.main.humidity}°C', style: TextStyle(fontSize: 15),),
          const SizedBox(height: 10),
          Text('pressure: ${weatherModel.main.pressure}', style: TextStyle(fontSize: 15),),
          const SizedBox(height: 10),


        ],
          ),
      ),
    );

  }
}
