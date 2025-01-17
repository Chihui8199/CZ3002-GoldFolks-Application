import 'package:http/http.dart' as http;
import 'dart:convert';

class VideoDetailFetcher {
  static Future<dynamic> getVideoInfo(String videoLink) async{
    var response = await http.get(Uri.parse("https://www.youtube.com/oembed?url=$videoLink&format=json"));

    try {
      if (response.statusCode == 200) {
        return json.decode(response.body);
      } else {
        return null;
      }
    } catch (Exception) {
      print("Error in format");
    }
  }
}