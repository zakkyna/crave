import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'network_error.freezed.dart';

@freezed
class NetworkError with _$NetworkError {
  const factory NetworkError.noInternet() = _NoInternet;
  const factory NetworkError.serverError({Response? response}) = _ServerError;
  const factory NetworkError.timeout() = _Timeout;
  const factory NetworkError.other({required dynamic error}) = _Other;
}
