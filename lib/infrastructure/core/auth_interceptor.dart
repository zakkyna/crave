import 'package:crave_app/domain/core/interfaces/i_storage.dart';
import 'package:dio/dio.dart';

enum AuthType { basic, bearer, custom }

extension AuthTypeX on AuthType {
  String get type {
    switch (this) {
      case AuthType.basic:
        return 'Basic';

      default:
        return 'Bearer';
    }
  }
}

class AuthInterceptor extends Interceptor {
  // final String? token;
  final IStorage storage;
  final String authKey;
  final AuthType authType;
  // final String
  AuthInterceptor({
    required this.storage,
    required this.authKey,
    this.authType = AuthType.bearer,
  });

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final box = await storage.openBox(StorageConstants.security);
    final String? security =
        await storage.getData(box, key: authKey) as String?;

    final Map<String, dynamic> headers = options.headers;
    if (security != null) {
      headers.addAll({"Authorization": "${authType.type} $security"});
    }
    options.headers = headers;

    super.onRequest(options, handler);
  }
}
