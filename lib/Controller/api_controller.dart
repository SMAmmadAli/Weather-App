import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:weather_app/Model/weather_model.dart';

class WeatherService {
  getWeatherDetail(String city) async {
    var url =
        "https://api.openweathermap.org/data/2.5/weather?q=$city&APPID=43ea6baaad7663dc17637e22ee6f78f2";
    var uri = Uri.parse(url);
    var response = await http.get(uri);
    var jsonResponse = jsonDecode(response.body);
    var userData = Weather_Model.fromJson(jsonResponse);
    return userData;

    // print(jsonResponse);

    // try {
    //   if (jsonResponse.hashCode == 200) {
    //     return Weather_Model.fromJson(jsonResponse);
    //   }
    // } catch (e) {
    //   throw Exception();
    // }

    // 75b9969cc7b74e3b941193047232202
    // final queryParameter = {
    //   "key": "75b9969cc7b74e3b941193047232202",
    //   'q': place
    // };
    // var uri = Uri.http(
    //     'http://api.weatherapi.com', '/v1/current.json', queryParameter);
    // final response = await http.get(uri);
    // var jsonRes = jsonDecode(response.body);
  }
}




// Container(
              //   decoration: BoxDecoration(),
              //   child: TextField(
              //     controller: myController,
              //   ),
              // ),
              // ElevatedButton(
              //     onPressed: () async {
                    // weather_model = await WeatherService()
                    //     .getWeatherDetail(myController.text);
                    // print(weather_model?.main?.temp ?? "MyError");
                    // setState(() {});
              //     },
              //     child: const Text("Search")),
              // Text("Temperature: ${weather_model?.main?.temp}"),
              // Text("Pressure: ${weather_model?.main?.pressure}")



