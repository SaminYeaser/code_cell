import 'dart:convert';

import 'package:code_cell/model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

Future<Album> fetchAlbum() async{
  final response = await http.post(Uri.parse('https://khelaahobe.com/api/login?phone=01600223852&password=123456'));

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    print(response.statusCode);
    return Album.fromJson(jsonDecode(response.body));
  } else {
    print(response.statusCode);
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}

