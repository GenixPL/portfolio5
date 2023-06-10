import 'dart:convert';

import 'package:http/http.dart';

extension ResponseExtensions on Response {
  Map<String, dynamic>? get bodyAsJsonMap {
    try {
      return jsonDecode(body) as Map<String, dynamic>;
    } catch (e) {
      return null;
    }
  }

  List<dynamic>? get bodyAsJsonList {
    try {
      return jsonDecode(body) as List<dynamic>;
    } catch (e) {
      return null;
    }
  }
}
