import 'package:dio/dio.dart';
import 'package:network/interceptor/AuthenticationInterceptor.dart';

class MarvelApi {
  final dio = createDio();
  final tokenDio = Dio(BaseOptions(baseUrl: _baseUrl));

  MarvelApi._internal();

  static final _singleton = MarvelApi._internal();

  factory MarvelApi() => _singleton;

  static Dio createDio() {
    var dio = Dio(BaseOptions(
      baseUrl: _baseUrl,
      receiveTimeout: 15000, // 15 seconds
      connectTimeout: 15000,
      sendTimeout: 15000,
    ));

    dio.interceptors.addAll({AuthenticationInterceptor()});
    return dio;
  }
}

final _baseUrl = "https://gateway.marvel.com";
