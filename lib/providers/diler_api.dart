import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class DilerApi with ChangeNotifier {
  List _dilers = [];
  List get dilers => _dilers;

  Future<void> getDilers() async {
    Uri url = Uri.parse('https://avtosalon.pythonanywhere.com/api/dilery/');
    http.Response response = await http.get(url);
    List data = json.decode(response.body);
    _dilers = data;

    notifyListeners();
  }
}
