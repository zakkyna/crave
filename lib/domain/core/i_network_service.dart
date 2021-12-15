import 'package:fpdart/fpdart.dart';
import 'package:crave_app/domain/core/network_error.dart';

abstract class INetworkService {
  Future<Either<NetworkError, dynamic>> getHttp({
    required String path,
    String? parameter,
    Map<String, dynamic>? queryParameter,
    Map<String, dynamic>? header,
    Function(int, int)? onReceiveProgress,
  });

  Future<Either<NetworkError, dynamic>> postHttp({
    required String path,
    String? parameter,
    Map<String, dynamic>? queryParameter,
    dynamic content,
    String? contentType,
    Map<String, dynamic>? header,
    Function(int, int)? onSendProgress,
    Function(int, int)? onReceiveProgress,
  });

  Future<Either<NetworkError, dynamic>> putHttp({
    required String path,
    String? parameter,
    Map<String, dynamic>? queryParameter,
    Map<String, dynamic>? content,
    String? contentType,
    Map<String, dynamic>? header,
    Function(int, int)? onSendProgress,
    Function(int, int)? onReceiveProgress,
  });

  Future<Either<NetworkError, dynamic>> download({
    required String url,
    required String downloadPath,
    required String fileName,
    Map<String, dynamic>? queryParameter,
    Map<String, dynamic>? header,
    Function(int, int)? onReceiveProgress,
  });
}
