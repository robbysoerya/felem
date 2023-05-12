import 'dart:io';

import 'package:dio/dio.dart';
import 'package:felem/core/utils/constant.dart';

class NetworkService with DioMixin implements Dio {
  @override
  HttpClientAdapter get httpClientAdapter => HttpClientAdapter();

  @override
  Interceptors get interceptors => Interceptors()
    ..add(LogInterceptor(
      requestBody: true,
      responseBody: true,
      request: true,
      requestHeader: true,
      responseHeader: true,
    ));

  @override
  BaseOptions get options => BaseOptions(
        baseUrl: kBaseUrl,
        contentType: ContentType.json.mimeType,
        responseType: ResponseType.json,
        receiveDataWhenStatusError: false,
        validateStatus: (status) => status! < 500,
      );
}