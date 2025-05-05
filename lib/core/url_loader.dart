import 'dart:convert';

import 'package:dio/dio.dart';

class UrlPreviewLoader {
  static Future<Map<String, String?>> fetchLinkPreviewMeta(String url) async {
    final apiUrl =
        'https://api.linkpreview.net/?key=c27707413819b099b7a9e1a781d3657c&q=$url';
    final response = await Dio().get(apiUrl);

    if (response.statusCode == 200) {
      final data = response.data;
      return {
        'title': data['title'],
        'description': data['description'],
        'image': data['image'],
      };
    } else {
      throw Exception('Failed to fetch metadata');
    }
  }

  static String getDomain(String url) {
    Uri uri = Uri.parse(url);
    return uri.host;
  }
}
