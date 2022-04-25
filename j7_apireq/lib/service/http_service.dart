import 'package:http/http.dart' as http;
import 'dart:io';

class HttpService {
  final String apiKey = 'c5abf817ce8b2df9f2c213d691415143';
  final String baseUrl =
      'https://api.themoviedb.org/3/movie/550?api_key=c5abf817ce8b2df9f2c213d691415143';

  Future<String?> getPopulaMovies() async {
    final String uri = baseUrl + apiKey;

    http.Response result = await http.get(Uri.parse(uri));

    if (result.statusCode == HttpStatus.ok) {
      print("Sukses");
      String response = result.body;
      return response;
    } else {
      print("Fail");
      return null;
    }
  }
}
