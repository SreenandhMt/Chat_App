abstract class AppException implements Exception {
  final String message;
  final String code;
  final String details;

  const AppException(this.message, {required this.code, required this.details});

  @override
  String toString() {
    return "Error: $message (code: $code, details: $details)";
  }
}

class NetworkException extends AppException {
  const NetworkException({
    String message = "No Internet Connection",
    String code = "NETWORK_ERROR",
    String? details,
  }) : super(message,
            code: code,
            details: details ??
                "Please check your internet connection and try again.");
}

class ServerException extends AppException {
  const ServerException({
    String message = "Server Error",
    String code = "SERVER_ERROR",
    String? details,
  }) : super(
          message,
          code: code,
          details: details ??
              "The server is currently unreachable. Please try later.",
        );
}

class UnknownException extends AppException {
  const UnknownException({
    String message = "Something went wrong",
    String code = "UNKNOWN_ERROR",
    String? details,
  }) : super(message,
            code: code,
            details: details ??
                "An unknown error occurred. Please contact support.");
}
