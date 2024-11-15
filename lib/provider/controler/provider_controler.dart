import 'package:cavalloapp/provider/models/apimodels.dart';
import 'package:cavalloapp/provider/models/model1.dart';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

class Control_Provider extends ChangeNotifier {
  List<Api_model> prodacts = [];
  List<Api_model2> image = [];

  Future<void> fetchdata() async {
    try {
      final response =
          await Dio().get('https://672b53c7976a834dd0269eaa.mockapi.io/data');
      final List<dynamic> data = response.data;
      notifyListeners();
      // print('${response.data}');

      prodacts = data.map((item) => Api_model.fromJson(item)).toList();
    } catch (error) {
      print('Ewrror fetching data : $error');
    }
  }

  Future<void> fetchdata2() async {
    try {
      final response =
          await Dio().get('https://672b53c7976a834dd0269eaa.mockapi.io/nn');
      final List<dynamic> data = response.data;
      print('${response.data}');

      image = data.map((item) => Api_model2.fromJson(item)).toList();
    } catch (error) {
      print('Ewrror fetching data : $error');
    }
    notifyListeners();
  }
}
