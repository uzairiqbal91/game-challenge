import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';


import '../error.dart';
import 'dio_interceptor.dart';


typedef ResponseConverter<T> = T Function(dynamic response);

class DioClient  {
  String baseUrl = "https://api.rawg.io/api";


  bool _isUnitTest = false;
  late Dio _dio;

  DioClient({bool isUnitTest = false}) {
    _isUnitTest = isUnitTest;



    _dio = _createDio();

    // if (!_isUnitTest) _dio.interceptors.add(DioInterceptor());
  }

  Dio get dio {
    if (_isUnitTest) {
      /// Return static dio if is unit test
      return _dio;
    } else {



      final dio = _createDio();

      if (!_isUnitTest) dio.interceptors.add(DioInterceptor());

      return dio;
    }
  }

  Dio _createDio() => Dio(
        BaseOptions(
          baseUrl: baseUrl,

        ),
      );

  Future<Either<Failure, T>> getRequest<T>(
    String url, {
    Map<String, dynamic>? queryParameters,
    required ResponseConverter<T> converter,

  }) async {
    try {
      final response = await dio.get(url, queryParameters: queryParameters);
      if ((response.statusCode ?? 0) < 200 ||
          (response.statusCode ?? 0) > 201) {
        throw DioException(
          requestOptions: response.requestOptions,
          response: response,
        );
      }
      return Right(converter(response.data));

    } on DioException catch (e) {

      return Left(
        ServerFailure(
          e.response?.data['error'] as String? ?? e.message,
        ),
      );
    }
  }


}
