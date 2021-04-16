class NetworkFailure {
  final int _code;
  final String _message;

  int get code => _code;
  String get message => _message;

  NetworkFailure({required int code, required String message})
      : _code = code,
        _message = message;

  @override
  String toString() {
    return "Failure: Code: $code, Message $message";
  }
}
