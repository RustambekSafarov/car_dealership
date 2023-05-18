import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../models/car.dart';

class CarApi with ChangeNotifier {
  List<Car> _cars = [];
  List<Car> get cars {
    return [..._cars];
  }

  Future<List<Car>> getCars() async {
    Uri url = Uri.parse('https://avtosalon.pythonanywhere.com/api/car/');
    var headers = {
      'Content-Type': 'application/json',
    };
    http.Response response = await http.get(url, headers: headers);
    List dataFromJson = jsonDecode(response.body);
    _cars = dataFromJson.map((e) => Car.getCar(e)).toList();

    return _cars;
  }

  List<Car> _carsByModel = [];
  List<Car> get carsByModel {
    return [..._carsByModel];
  }

  Future<List<Car>> getModels(String model) async {
    Uri url = Uri.parse('https://avtosalon.pythonanywhere.com/api/car/');
    var headers = {
      'Content-Type': 'application/json',
    };
    http.Response response = await http.get(url, headers: headers);
    List dataFromJson = jsonDecode(response.body);
    _carsByModel = dataFromJson.where((element) => element['model'].substring(0, 3) == model.substring(0, 3)).map((e) => Car.getCar(e)).toList();

    return _carsByModel;
  }
}
