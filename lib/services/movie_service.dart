
import 'package:dio/dio.dart';
import 'package:flickd_app/models/movie.dart';
import 'package:flickd_app/services/http_service.dart';
import 'package:get_it/get_it.dart';

class MovieService {
  final GetIt getIt = GetIt.instance;

  HTTPService? _http;

  MovieService() {
    _http = getIt.get<HTTPService>();
  }

  Future<List<Movie>> getPopularMovie({int page = 1}) async {
    Response? _response = await _http!.get('/movie/popular', query: {
      'page': page,
    });

    if(_response!.statusCode == 200){
      Map _data = _response.data;
      List<Movie> _movies = _data['results'].map<Movie>((_movieData){
        return Movie.from(_movieData);
      }).toList();
      return _movies;
    }else{
      throw Exception('Couldn\'t load popular movies');
    }
  }
}
