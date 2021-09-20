import 'package:flickd_app/services/http_service.dart';
import 'package:get_it/get_it.dart';

class MovieService{
  final GetIt getIt = GetIt.instance;

  HTTPService? _http;

  MovieService(){
    _http = getIt.get<HTTPService>();
  }
}