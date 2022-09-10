import 'dart:convert';

import 'package:http/http.dart' as http;

import 'package:flutter/foundation.dart';

import '../const/api_const.dart';
import '../model/points.dart';


List <Points> parsePoints(String responseBody){
  var l = json.decode(responseBody) as List<dynamic>;
  var points = l.map((model)=> Points.fromJson(model)).toList();
  return points;
}

Future<List<Points>> fetchBanner ()async
{
  final response = await http.get(Uri.parse('$mainUrl'));
  if(response.statusCode==200) {
    return compute (parsePoints,response.body);
  } else if (response.statusCode == 404) {
    throw Exception('Not found');
  } else {
    throw Exception ('Cannot get Banner');
  }
}