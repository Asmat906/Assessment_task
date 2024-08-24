import 'dart:convert';

import 'package:flutter_preload_videos/core/constants.dart';
import 'package:http/http.dart' as http;

import '../model/reel_model.dart';

class ApiService {
  static final List<String> _videos = [];
  static Future<List<String>> getVideos({int id = 0}) async {
    final page = (id / kNextLimit).ceil();
    currentpage = currentpage + 1;
    int p = currentpage == 0 ? 1 : currentpage;
    final url =
        'https://api.ulearna.com/bytes/all?page=${p}&limit=20&country=United+States';

    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final jsonResponse = json.decode(response.body);
      reelsModel reelsData = reelsModel.fromJson(jsonResponse);
      if (reelsData.data?.data != null) {
        _videos.addAll(
            reelsData.data!.data!.map((video) => video.cdnUrl!).toList());
      }

      await Future.delayed(const Duration(seconds: kLatency));

      // Handle video range based on the `id` parameter
      if (id >= _videos.length) {
        return [];
      }

      final end =
          (id + kNextLimit > _videos.length) ? _videos.length : id + kNextLimit;
      return _videos.sublist(id, end);
    } else {
      throw Exception('Failed to load videos');
    }
  }
}
