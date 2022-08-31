import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class AuthServices extends ChangeNotifier {
  final String _baseUrl = 'identitytoolkit.googleapis.com';
  final String _fireBaseToken = 'AIzaSyBVwDRG6GXyLyAZEIkeW-onCOLKQiVzrJI';

// Si retornamos algo es un error, si no todo bien
  Future<String?> createUser(String email, String password) async {
    final Map<String, dynamic> authData = {
      'email': email,
      'password': password
    };
    final url = Uri.https(
      _baseUrl,
      'v1/accounts:signUp',
      {'key': _fireBaseToken},
    );
    final resp = await http.post(url, body: json.encode(authData));
    final Map<String, dynamic> decodeResponse = json.decode(resp.body);

    if (decodeResponse.containsKey('idToken')) {
      // TODO: grabar el token en un lugar seguro
      return null;
    } else {
      return decodeResponse['error']['message'];
    }
  }
}
