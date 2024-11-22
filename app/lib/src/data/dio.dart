import 'package:dio/dio.dart';

abstract interface class IDioFactory {
  Dio create();
}

class DioFactoryImpl implements IDioFactory {
  @override
  Dio create() {
    final dio = Dio(
      BaseOptions(
        baseUrl: 'http://localhost:8080',
        connectTimeout: const Duration(milliseconds: 5000),
        receiveTimeout: const Duration(milliseconds: 3000),
        headers: {
          'Content-Type': 'application/json',
        },
      ),
    );

    dio.interceptors.add(
      LogInterceptor(
        request: true,
        responseBody: true,
        requestBody: true,
      ),
    );

    return dio;
  }
}
