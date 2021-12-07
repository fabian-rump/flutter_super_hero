import 'dart:convert';

import 'package:crypto/crypto.dart';
import 'package:dio/dio.dart';
import 'package:network/auth/secrets.dart';

class AuthenticationInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    super.onRequest(options, handler);

    final timestamp = DateTime.now().millisecondsSinceEpoch;
    final hash = generateMd5("$timestamp$privateKey$publicKey");

    options.queryParameters.addAll({"ts": timestamp, "apikey": publicKey, "hash": hash});
  }

  String generateMd5(String input) {
    return md5.convert(utf8.encode(input)).toString();
  }
}
